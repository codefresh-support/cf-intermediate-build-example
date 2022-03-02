# Pipeline Example - Building dependencies into an intermediate container


This is an example project showing how to build dependencies into an intermediate container, and a pipeline that detects when the dependencies have changed in order to rebuild the intermediate container that holds them. Using this you can speed up pipelines that often have the same dependencies.

This project uses a 'dependencies.list' file in place of a list of dependencies to install (eg pip's requirments.txt etc), and an install script that consumes that file to download the files it references. Both of these, and the Dockerfile are in the dependencies subfolder.

Yaml for an example pipeline is in 'example-pipeline.yaml'.
