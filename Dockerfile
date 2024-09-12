FROM nvcr.io/nvidia/tensorflow:19.10-py3

RUN pip install --upgrade pip
RUN pip install imageio imageio-ffmpeg h5py opencv-python==4.5.3.56 
RUN pip install matplotlib keras==2.2.5 requests

RUN apt-get update -y
RUN apt-get install ffmpeg libsm6 libxext6 -y

WORKDIR /workspace/
COPY . .

RUN chmod +x entrypoint.sh


COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
