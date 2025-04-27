Docker Convertor App
A Python application that converts one or more images into a single PDF file.

Build Instructions
Build the Docker image:
docker build -t convertor-app .

Run Instructions
Run the container (pass a path to an image file or a folder):
docker run --rm convertor-app [path_to_file_or_folder]

Example:
docker run --rm convertor-app images/

Notes
The application expects a command-line argument: a path to an image or a folder.
The resulting PDF file is saved in the output/ folder.
Ensure that the images exist inside the container (using COPY during build or mounting a volume if needed).


