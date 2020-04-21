FROM continuumio/miniconda3:4.8.2

RUN conda install \
    bottleneck \
    dask \
    distributed \
    pandas \
    netcdf4 \
    numpy \
    scipy \
    toolz \
    xarray

RUN /opt/conda/bin/python -m pip install \
    jrnr>=0.2.4 \
    git+git://github.com/ClimateImpactLab/climate_toolbox/tree/archive \
    metacsv \
    datafs \
    impactlab-tools
