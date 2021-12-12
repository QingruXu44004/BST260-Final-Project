# BST260-Final-Project: Prediction of Music Genres and Related Features

### Project Overview 

#### Group Members
Tracy (Qiying) Cui, Jenny Jin, Jordan Roberts, Julia Snyder, Qingru Xu

#### Overview and Motivation: 
While music preferences may be perceived as highly personal and emotional, prediction of customers’ music tastes is an important piece of the business model of streaming websites like Spotify. We are interested in better understanding how machine learning about music can be applied to distinguish music genres or general modes,  predict song popularity, and establish user music preferences.

#### Related Work: 

We were inspired by an article on the prediction of the music genre of a song from its lyrics. The authors trained a logistic regression classifier to extract the emotions from a dataset with music lyrics, and further used the emotions, number of words, number of lines to classify and predict music genres. Instead of lyrics, we would like to utilize audio features directly to predict the music genre and mimic what musical platforms like Spotify uses to better recommend similar songs to specific users.  
Source: https://towardsdatascience.com/music-genre-analysis-understanding-emotions-and-topics-in-different-genres-110377d8888c 

#### Initial Questions: 

What features make a song popular? As we learned about machine learning methods, we though we can make predictions about songs that could be popular in the future, and recommend tracks for any users. During our analysis, we also want to investigate if musical modes (major or minor) can be predicted from the features. 

#### Data:
The dataset was obtained from the Kaggle website (https://www.kaggle.com/vicsuperman/prediction-of-music-genre) and was originally collected from Spotify. The csv file was downloaded directly from the website.

Our data cleaning process is included in the Exploratory_Data_Analysis.Rmd RMarkdown file. After data cleaning, the dataset is composed of 40560 sound tracks with 14 variables. Each song is labeled with a music genre which has a total of 10 categories: electronic, anime, jazz, alternative, country, rap, blues, rock, classical, and hip-hop. And the 14 variables are popularity, acousticness, danceability, duration, energy, instrumentalness, key, liveness, loudness, mode, speechiness, tempo, valence and music_genre. Each variables are described below:

1. Popularity — The popularity of the track. The value will be between 0 and 100, with 100 being the most popular.
2. Tempo — The overall estimated tempo of a track in beats per minute (BPM).
3. Key — The estimated overall key of the track. Integers map to pitches using standard Pitch Class notation. Ex: 0 = C, 1 = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
4. Mode — Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0.
5. Danceability — Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is the most danceable.
6. Instrumentalness — Predicts whether a track contains no vocals. The closer the instrumentalness value is to 1.0, the greater likelihood the track contains no vocal content.
7. Loudness — The overall loudness of a track in decibels (dB). Values typical range between -60 and 0 dB.
8. Acoustiness — A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.
9. Valence — A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive.
10. Energy — Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy.
11. Liveness - Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides strong likelihood that the track is live.
12. Speechness - Detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0 the attribute value. 
11. Duration - Length of the track
12. Music Genre



#### Exploratory Analysis: 
Exploratory_Data_Analysis.Rmd

#### Final Analysis: 
ML_PartI_Binary Classification.Rmd

ML_PartII Multiclass_Classification.Rmd

ML_PartIII_Regression.Rmd

ML_PartIV_Classification.Rmd

Shiny_app_analysis.Rmd
