FROM tensorflow/tensorflow

RUN apt-get update
RUN apt-get install -y python-tk

RUN pip install Pillow
RUN pip install numpy
RUN pip install matplotlib
RUN pip install requests

ADD deep_dream.py /src/
WORKDIR /src
ADD pilatus800.jpg .
ADD faas.jpg .
ADD community.png .

CMD ["python", "deep_dream.py"]
