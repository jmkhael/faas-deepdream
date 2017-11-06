FROM tensorflow/tensorflow

RUN apt-get update
RUN apt-get install -y python-tk

RUN pip install Pillow
RUN pip install numpy
RUN pip install matplotlib
RUN pip install requests

ADD img /img
ADD src /src
RUN mkdir /output

WORKDIR /src

CMD ["python", "/src/deep_dream.py"]
