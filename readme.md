## Usage steps
1. Clone this repo
2. Install laravel dependencies: `composer install`
3. Install client side packages: `npm install`
4. Change the database info from the `.env` file (create the database)
    > DB_DATABASE=applicants  
    > DB_USERNAME=homestead  
    > DB_PASSWORD=secret
5. Run the migration: `php artisan migrate`
6. (Optional) Seed the database: `php artisan db:seed`
7. Build the client side (vue.js): `npm run dev`
8. Serve the laravel app: `php artisan serve`
9. Done! You can now use the api and also visit the dashboard.