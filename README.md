# Scientific computing platform aimed at dealing with neuro-related data
[JupyterLab](https://github.com/jupyterlab/jupyterlab) is used as the development environment. Python is used as the fundamental language for computations, while numerous neuro-related libraries are also included such as [MNE](https://github.com/mne-tools/mne-python) and [EEGLAB](https://github.com/sccn/eeglab).

This computing platform can be downloaded as a [Docker image](https://hub.docker.com/r/nhowlettdev/neuro-data-python). For an introduction to Docker consider the tutorials provided by [freeCodeCamp](https://www.youtube.com/watch?v=fqMOX6JJhGo), in addition to those by [Docker](https://docs.docker.com/get-started/).

As the EEGLAB library is normally used within another computing environment (Octave in this instance), the interfacing package [Oct2Py](https://github.com/blink1073/oct2py) is used to allow calling of EEGLAB code from Python. Specific dependencies that the above libraries rely upon can be found within their respective documentation.
