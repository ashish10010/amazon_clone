## Running Locally

After cloning this repository, migrate to flutter-amazon-clone-tutorial folder. Then, follow the following steps:

-Create MongoDB Project & Cluster
-Click on Connect, follow the process where you will get the uri.- Replace the MongoDB uri with yours in server/index.js.
-Head to lib/constants/global_variables.dart file, replace with your IP Address.
-Create Cloudinary Project, enable unsigned operation in settings.
-Head to lib/features/admin/services/admin_services.dart, replace dm88qwpcr and cesyvywm with your Cloud Name and Upload Preset respectively.
Then run the following commands to run your app:

## Server Side

cd server
npm install
npm run dev (for continuous development)
OR
npm start (to run script 1 time)

## Client Side

flutter pub get

flutter run


## Tech Used
Server: Node.js, Express, Mongoose, MongoDB, Cloudinary

Client: Flutter, Provider
