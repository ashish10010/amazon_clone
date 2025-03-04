## Running Locally

After cloning this repository, migrate to flutter-amazon-clone-tutorial folder. Then, follow the following steps:

-Create MongoDB Project & Cluster <br>
-Click on Connect, follow the process where you will get the uri.- Replace the MongoDB uri with yours in server/index.js.<br>
-Head to lib/constants/global_variables.dart file, replace with your IP Address.<br>
-Create Cloudinary Project, enable unsigned operation in settings.<br>
-Head to lib/features/admin/services/admin_services.dart, replace dm88qwpcr and cesyvywm with your Cloud Name and Upload Preset respectively.<br>
Then run the following commands to run your app:<br>

## Server Side

cd server <br>
npm install <br>
npm run dev (for continuous development) <br>
OR<br>
npm start (to run script 1 time)<br>

## Client Side

flutter pub get

flutter run


## Tech Used
Server: Node.js, Express, Mongoose, MongoDB, Cloudinary

Client: Flutter, Provider
