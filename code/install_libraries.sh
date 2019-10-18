#!/usr/bin/env bash
# Downloads raw data into ./download
# and saves preprocessed data into ./data
# Get directory containing this script

CODE_DIR=`pwd`

export PYTHONPATH=$PYTHONPATH:$CODE_DIR

pip install -r ./requirements.txt

# download punkt, perluniprops
if [ ! -d "/usr/local/share/nltk_data/tokenizers/punkt" ]; then
    python2 -m nltk.downloader punkt
fi
