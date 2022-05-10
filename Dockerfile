# Use Jupyter's 'base notebook' image
FROM jupyter/base-notebook
USER root

# dependencies + MNE installation
RUN apt-get update \
  && apt-get -y install octave liboctave-dev build-essential
COPY octave-install.m .
RUN octave octave-install.m
RUN pip3 install numpy scipy mne oct2py matplotlib

# EEGLAB installation
RUN apt-get install git -y
RUN git clone --recurse-submodules https://github.com/sccn/eeglab.git /usr/lib/eeglab

# load required files at every boot
COPY load.sh /etc/init.d/
COPY octave-load.m .
RUN chmod a+x /etc/init.d/load.sh
RUN chmod a+x ./octave-load.m
RUN update-rc.d load.sh defaults
