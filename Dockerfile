FROM python:3.12.6-slim

ENV TZ=Asia/Seoul

WORKDIR /app

COPY requirements.txt .

# RUN apt-get update && apt-get install -y \
#     libgl1-mesa-glx \
#     libglib2.0-0 

RUN pip3 install -r /app/requirements.txt

COPY . .

EXPOSE 8081

CMD ["uvicorn", "main:app", "--port=8081", "--host=0.0.0.0"]
