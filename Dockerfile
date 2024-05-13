# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/engine/reference/builder/

FROM continuumio/anaconda3 as base

RUN /opt/conda/bin/conda install jupyter -y --quiet && \
    mkdir /opt/notebooks

EXPOSE 8888

CMD [\
    "/opt/conda/bin/jupyter",\
    "notebook",\
    "--notebook-dir=/opt/notebooks",\
    "--ip='*'",\
    "--port=8888",\
    "--no-browser",\
    "--allow-root"\
]