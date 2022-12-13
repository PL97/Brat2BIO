# Brat2BIO
A simple script that convert Brat format to BIO format

 ***Conversion code adapted from [GithubGist](https://gist.github.com/thatguysimon/6caa622be083f97b8c5c9a10478ba058) by [thatguysimon](https://gist.github.com/thatguysimon)***

___
## What this git repo for?
This scripts provide a simple tools to convert Brat Standoff format to BIO format. 

what's different:
- [x] support multiple span of text from a single entity
- [x] save to sentense level BIO csv file
- [ ] visualize the output annotations (e.g. distribution of the sentence length, entity distribution)
- [ ] multi-process speed up

___

## A step by step instruction

### prerequisits
```packages
pycorenlp; corenlp
```

### Install CoreNLP
Follow the [setup instruction](https://stanfordnlp.github.io/CoreNLP/download.html#steps-to-setup-from-the-official-release). Make sure enviroment variables are added to the system path (**Important**).

### Run bash script
```bash
sudo chmod +x convert.sh ## can skip this step if already have the execute permission
./convert.sh sample output ## the first arg points to sample data, the second args indicate the path of output directory
```

### What expect to see from output
|file|description|
|:---|:---:|
 ner-crf-training-data.tsv | the output BIO annotations|
re-training-data.corp | origional data corpus|



## (Optional) Ready to training Deep learning models?
The demo.ipynb provide a simple data preparation pipeline that separate the data into sentencs and label:

- Sentences containing a list of tokenized sentences
- Lable containing a list of corresponding IOB

Check the notebook for details





