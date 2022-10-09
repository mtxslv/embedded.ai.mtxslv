#!/bin/sh
file_urls=('https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/README.md'
           'https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/data_segregation.ipynb'
           'https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/fetch_data.ipynb' 
           'https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/preprocessing.ipynb' 
           'https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/test.ipynb' 
           'https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/train.ipynb')

file_names=('./projects/other_projects/week_5/first_classifier/README.md' 
            './projects/other_projects/week_5/first_classifier/data_segregation.ipynb' 
            './projects/other_projects/week_5/first_classifier/fetch_data.ipynb' 
            './projects/other_projects/week_5/first_classifier/preprocessing.ipynb' 
            './projects/other_projects/week_5/first_classifier/test.ipynb' 
            './projects/other_projects/week_5/first_classifier/train.ipynb')

for index in "${!file_urls[@]}";
do
    curl ${file_urls[$index]} --output ${file_names[$index]}
done            