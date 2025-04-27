Docker Convertor App
A Python application that converts one or more images into a single PDF file.

Build Instructions
Build the Docker image:
docker build -t convertor-app .

Run Instructions
Run the container with volume mounts for images and output folders, and with the PDF_NAME environment variable:
docker run --rm -v /home/naamas/convertor-/images:/app/images -v /home/naamas/convertor-/output:/app/output -e PDF_NAME="my_custom_pdf" convertor-app python convert_image_to_pdf.py /app/images

Example:
docker run --rm -v /home/naamas/convertor-/images:/app/images -v /home/naamas/convertor-/output:/app/output -e PDF_NAME="my_custom_pdf" convertor-app python convert_image_to_pdf.py /app/images


Notes
Images must have .JPG extension (uppercase).
Output PDF will be saved in the output/ folder.
PDF file name can be customized using the PDF_NAME environment variable.
Ensure that volumes are mounted correctly when running the container.


