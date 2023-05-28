#!/bin/bash
docker build -t example-project-install --target install . 
docker run -it --rm -v ${PWD}:/usr/src/app/ --name example-project-install example-project-install 
docker build -t example-project-test --target test . 
docker run -it --rm -v ${PWD}:/usr/src/app/ --name example-project-test example-project-test
