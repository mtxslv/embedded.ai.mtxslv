# Model Card

Model cards are a succinct approach for documenting the creation, use, and shortcomings of a model. The idea is to write a documentation such that a non-expert can understand the model card's contents. For additional information see the Model Card paper: https://arxiv.org/pdf/1810.03993.pdf

## Model Details
This project is based on [Ivanovitch Silva's](https://github.com/ivanovitchm/embedded.ai/tree/main/lessons/week_05/first_classifier). A complete data pipeline was built using Google Colab, Scikit-Learn and Weights & Bias to train a MLP model. The big-picture of the data pipeline is shown below:

<img width="800" src="https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/fig/workflow.png">

The MLP experiment involved using Sweeps to try different architectures and hyperparameters. Moreover, the best loss was used as a surrogate to the accuracy (it was assumed that a lower loss imply a better accuracy). The best parameters were:
- architecture : 100, 50, 50, 100;
- random state: 42
- alpha (L2 regularizer): 0.0001 

## Intended Use
This model is used as a proof of concept for the evaluation of an entire data pipeline incorporating Machine Learning fundamentals. The data pipeline is composed of the following stages: a) ``fecht data``, b) ``preprocess``, c) <s>``check data``</s>, d) ``segregate``, e) ``train`` and f) ``test``.

## Training Data

The purpose of this dataset is to correctly classify an image as containing a dog, cat, or panda. Containing only 3,000 images, the Animals dataset is meant to be another **introductory** dataset
that we can quickly train a KNN model and obtain initial results (no so good accuracy) that has potential to be used as a baseline. 

After the EDA stage of the data pipeline, it was noted that the images in training data has different resolutions. A pre-processing stage is necessary in order to normalize all images using the same size. 

<img width="600" src="https://raw.githubusercontent.com/ivanovitchm/embedded.ai/main/lessons/week_05/first_classifier/fig/EDA.png">


## Evaluation Data
The dataset under study is split into Train and Test during the ``Segregate`` stage of the data pipeline. 70% of the clean data is used to Train and the remaining 30% to Test. 

## Metrics
In order to follow the performance of machine learning experiments, the project marked certains stage outputs of the data pipeline as metrics. The metrics adopted are: [accuracy](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.accuracy_score.html), [f1](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.f1_score.html#sklearn.metrics.f1_score), [precision](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.precision_score.html#sklearn.metrics.precision_score), [recall](https://scikit-learn.org/stable/modules/generated/sklearn.metrics.recall_score.html#sklearn.metrics.recall_score).

To calculate the evaluations metrics is only necessary to run:

The follow results will be shown:

 **Stage [Run]**                        | **Accuracy** | **F1** | **Precision** | **Recall** | 
---------------------------------|--------------|--------|---------------|------------|
 Test (MLP) | 0.59      | 0.57 | 0.59        | 0.59     |  
 Test (KNN)  | 0.4533      | 0.4548 | 0.5435        | 0.4533     |


## Ethical Considerations

We may be tempted to claim that this dataset contains the only attributes capable of predicting if there is a cat, dog or a panda in an image. However, this is not the case. The dataset is composed of 3,000 images, which is a small number of images to train a model. The dataset is also composed of images with different resolutions, which may lead to a model that is not robust to different image sizes.

## Caveats and Recommendations
It should be noted that the model trained in this project was used only for validation of a complete data pipeline. It is notary that some important issues related to size of images exist, and adequate techniques need to be adopted in order to balance it. Including data augmentation techniques, for example. Other more appropriate models should be used in order to obtain better results such as Convolutional Neural Networks (CNNs).