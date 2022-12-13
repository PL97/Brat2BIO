#!/usr/bin/env bash

(nohup java -mx4g edu.stanford.nlp.pipeline.StanfordCoreNLPServer 9000 &) &&\
	python brat2bio.py --data_folder $1 --output_folder $2
