#Import the necessary methods from tweepy library
from donthackme import ACCESS_TOKEN_SECRET,ACCESS_TOKEN, CONSUMER_KEY, CONSUMER_SECRET
from tweepy.streaming import StreamListener
from tweepy import OAuthHandler
from tweepy import Stream

#Variables that contains the user credentials to access Twitter API
access_token = ACCESS_TOKEN
access_token_secret = ACCESS_TOKEN_SECRET
consumer_key = CONSUMER_KEY
consumer_secret = CONSUMER_SECRET

# Called the three files testfile, testfile1, testfile2
file = open('testfile3.csv','w')


#This is a basic listener that just prints received tweets to stdout.
class StdOutListener(StreamListener):

    def on_data(self, data):
        file.write(data) #return True
        return True

if __name__ == '__main__':
    #This handles Twitter authetification and the connection to Twitter Streaming API
    l = StdOutListener()
    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    stream = Stream(auth, l)
    i = 0
    if i < count:
    #This line filter Twitter Streams to capture data by the keywords: 'The', 'what', 'What', 'You', 'Your', 'A', 'new', 'Hi', 'We', 'My', 'Now', 'please', 'get'
        stream.filter(track=['The', 'what', 'What', 'You', 'Your', 'A', 'new', 'Hi', 'We', 'My', 'Now', 'please', 'get'])
    count += 1
