# BST260-Final-Project: Prediction of Music Genres and Related Features

### Project Overview 

#### Group Members
Tracy Cui, Jenny Jin, Jordan Roberts, Julia Snyder, Qingru Xu

#### Overview and Motivation: 
While music preferences may be perceived as highly personal and emotional, prediction of customers’ music tastes is an important piece of the business model of streaming websites like Spotify. We are interested in better understanding how machine learning about music can be applied to distinguish music genres or general modes,  predict song popularity, and establish user music preferences.

#### Related Work: Anything that inspired you, such as a paper, a web site, or something we discussed in class.

#### Initial Questions: 

What features make a song popular? As we learned about machine learning methods, we though we can make predictions about songs that could be popular in the future, and recommend tracks for any users. During our analysis, we also want to investigate if musical modes (major or minor) can be predicted from the features. 

#### Data:
The dataset was obtained from the Kaggle website (https://www.kaggle.com/vicsuperman/prediction-of-music-genre) and was originally collected from Spotify. The csv file was downloaded directly from the website.

Our data cleaning process is included in the Exploratory_Data_Analysis.Rmd RMarkdown file. After data cleaning, the dataset is composed of 40560 sound tracks with 14 variables. Each song is labeled with a music genre which has a total of 10 categories: electronic, anime, jazz, alternative, country, rap, blues, rock, classical, and hip-hop. And the 14 variables are popularity, acousticness, danceability, duration, energy, instrumentalness, key, liveness, loudness, mode, speechiness, tempo, valence and music_genre. 

#### Exploratory Analysis: 
Exploratory_Data_Analysis.Rmd

#### Final Analysis: 
ML_PartI_Binary Classification.Rmd

ML_PartII Multiclass_Classification.Rmd

ML_PartIII_Regression.Rmd

ML_PartIV_Classification.Rmd

Shiny_app_analysis.Rmd
