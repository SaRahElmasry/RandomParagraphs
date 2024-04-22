import nltk
nltk.download('punkt')
nltk.download('stopwords')
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from collections import Counter


# Read the contents of the file
with open("random_paragraphs.txt", "r") as file:
    text = file.read()

words = word_tokenize(text)

# Remove stopwords
stop_words = set(stopwords.words("english"))
filtered_words = [word for word in words if word.casefold() not in stop_words]

# Count the frequency of each word
word_counts = Counter(filtered_words)

# Display word frequency count
for word, count in word_counts.items():
    print(f"{word}: {count}")
