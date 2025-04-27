FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -rrequirements.txt
COPY . .
CMD ["python", "convert_image_to_pdf.py"]
