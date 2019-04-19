<?php

namespace App\Http\Controllers;

use App\Applicant;
use Illuminate\Http\Request;

class ApplicantsController extends Controller
{
    public function index()
    {
        return Applicant::all();
    }

    public function get(Applicant $applicant)
    {
        return $applicant;
    }

    public function create(Request $request)
    {
        $applicant = Applicant::create($request->all());

        return response()->json($applicant, 201);
    }

    public function update(Request $request)
    {
        $applicant = Applicant::findOrFail($request->input('id'));

        // Check if applicant applied last 6 months
        // If it is, check if this is from unhired to hired
        // Applicant cannot reapply for the duration of 6 months
        $isFromUnhiredToHired = !$applicant->isHired && $request->input('isHired');
        $last6Months = new \DateTime();
        $last6Months->modify('-6 months');
        $lastApplication = new \DateTime($applicant->lastApplication);
        $withinLast6Months = $lastApplication->diff($last6Months)->m < 6;
        if ($isFromUnhiredToHired && $withinLast6Months) {
            return response()->json([
                'error' => 'Applicants cannot re-apply within 6 months of their initial application.'
            ], 200);
        }

        $applicant->update($request->all());

        return response()->json($applicant, 200);
    }

    public function delete(Applicant $applicant)
    {
        $applicant->delete();

        return response()->json(null, 204);
    }
}
