import pandas as pd
from textblob import TextBlob

df = pd.read_csv(r"../data/Reviews.csv")  

# Sentiment analysis
df['polarity'] = df['review'].apply(lambda x: TextBlob(str(x)).sentiment.polarity)
df['sentiment'] = df['polarity'].apply(lambda x: 'Positive' if x > 0 else ('Negative' if x < 0 else 'Neutral'))

print(df.head())
