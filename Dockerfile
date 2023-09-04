FROM tensorflow/tensorflow:latest-gpu

WORKDIR /app
COPY TensorFlowTTS .

RUN pip install . && \
    pip install protobuf==3.20.0 && \
    rm -rf *

