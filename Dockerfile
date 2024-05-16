FROM jupyter/scipy-notebook

RUN pip install neo4j py2neo nbconvert
USER root

# Instalar paquetes LaTeX necesarios para la conversión de notebooks a PDF
RUN apt-get update && \
    apt-get install -y texlive-xetex texlive-fonts-recommended texlive-plain-generic

USER jovyan
