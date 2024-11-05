FROM continuumio/miniconda3:4.12.0


RUN conda install python=3.8.5 && conda clean -a -y
RUN conda install pytorch==1.11.0 torchvision==0.12.0 cudatoolkit=11.3 -c pytorch && conda clean -a -y
COPY environment.yaml ./
RUN conda env update --file environment.yaml --name base && conda clean -a -y
