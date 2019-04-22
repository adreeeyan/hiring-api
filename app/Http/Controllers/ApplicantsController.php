<?php

namespace App\Http\Controllers;

use App\Applicant;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Validator;
use Illuminate\Validation\Rule;

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
        // validate request
        $validator = Validator::make($request->all(), [
            'id' => [Rule::unique('applicants')],
            'email' => ['required', Rule::unique('applicants')],
            'name' => ['required'],
            'isHired' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => $validator->errors()
            ], Response::HTTP_BAD_REQUEST);
        }

        $applicant = Applicant::create($request->all());

        return response()->json($applicant, Response::HTTP_CREATED);
    }

    public function update(Request $request)
    {
        $applicant = Applicant::findOrFail($request->input('id'));

        // validate request
        $validator = Validator::make($request->all(), [
            'email' => [
                'required',
                Rule::unique('applicants')->ignore(($request->input('id')))
            ]
        ]);

        if ($validator->fails()) {
            return response()->json([
                'error' => $validator->errors()
            ], Response::HTTP_BAD_REQUEST);
        }

        // Check if applicant applied last 6 months
        // If it is, check if this is from unhired to hired
        // Applicant cannot reapply for the duration of 6 months
        // Pro tip: Add this in the validator above
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

        return response()->json($applicant, Response::HTTP_OK);
    }

    public function delete(Applicant $applicant)
    {
        $applicant->delete();

        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}
