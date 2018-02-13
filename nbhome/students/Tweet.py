# -*- coding: utf-8 -*-

#Import the necessary methods from tweepy library
import csv
import json
from twitter import *
from itertools import islice
import matplotlib.pyplot as plt
import numpy as np

# Read in data
def readFile(filename):
    data = []
    lines = len(data)
    with open(filename) as tweets:
        reader = csv.DictReader(tweets)
        for i in tweets:
            data.append(i)
            lines -= 1
            if lines == 0:
                break
    tweets = []
    for line in data:
        tweets.append(json.loads(line))
    return tweets

def separateTweet(tweets):
    nonRe = []
    Re = []
    count = 0
    co = 0
    for i in range(0,len(tweets),1):
        try:
            if tweets[i].get('text')[0:2] != 'RT':
                nonRe.append(tweets[i])
    	    else:
    	        Re.append(tweets[i])
                #print tweets[i].get('text')
                #print '-----------------'
                count+=1
        except KeyError:
            co +=1
        except AttributeError:
            co +=1
        except TypeError:
            co+=1
    return nonRe, Re


def filteringReTweets(Re):
    retext = []

    for i in range(0,len(Re),1):
        retext.append(Re[i].get('text'))

    return retext

def filteringTweets(nonRe):
    text = []
    for i in range(0,len(nonRe),1):
        text.append(nonRe[i].get('text'))

    return text

def filteringNames(text):
    idiot = []
    nerd = []
    slut = []
    killyourself = []
    whore = []
    rapebitch = []
    moron = []
    fat = []
    hateyou = []
    nobodylikesyou = []

    for i in range(0, len(text),1):
        if 'idiot' in text[i]:
    	    idiot.append(text[i])
        if 'nerd' in text[i]:
    	    nerd.append(text[i])
        if 'slut' in text[i]:
    	    slut.append(text[i])
        if 'kill yourself' in text[i]:
    	    killyourself.append(text[i])
        if 'whore' in text[i]:
    	    whore.append(text[i])
        if 'rape bitch' in text[i]:
    	    rapebitch.append(text[i])
        if 'moron' in text[i]:
    	    moron.append(text[i])
        if 'fat' in text[i]:
            fat.append(text[i])
        if 'hate you' in text[i]:
            hateyou.append(text[i])
        if 'nobody likes you' in text[i]:
            nobodylikesyou.append(text[i])
    return idiot, nerd, killyourself, slut, moron, whore, rapebitch, fat, hateyou, nobodylikesyou


data1 = readFile('testfile.csv')
data2 = readFile('testfile1.csv')
data3 = readFile('testfile2.csv')

tweets1 = separateTweet(data1)[0]
tweets2 = separateTweet(data2)[0]
tweets3 = separateTweet(data3)[0]

tweetsFilt1 = filteringTweets(tweets1)
tweetsFilt2 = filteringTweets(tweets2)
tweetsFilt3 = filteringTweets(tweets3)

print tweetsFilt1[0]

namesFilt1 = filteringNames(tweetsFilt1)
namesFilt2 = filteringNames(tweetsFilt2)
namesFilt3 = filteringNames(tweetsFilt3)

words1 = [len(namesFilt1[0]), len(namesFilt1[1]), len(namesFilt1[2]), len(namesFilt1[3]), len(namesFilt1[4]), len(namesFilt1[5]), len(namesFilt1[6]), len(namesFilt1[7]), len(namesFilt1[8]), len(namesFilt1[9])]
words2 = [len(namesFilt2[0]), len(namesFilt2[1]), len(namesFilt2[2]), len(namesFilt2[3]), len(namesFilt2[4]), len(namesFilt2[5]), len(namesFilt2[6]), len(namesFilt2[7]), len(namesFilt2[8]), len(namesFilt2[9])]
words3 = [len(namesFilt3[0]), len(namesFilt3[1]), len(namesFilt3[2]), len(namesFilt3[3]), len(namesFilt3[4]), len(namesFilt3[5]), len(namesFilt3[6]), len(namesFilt3[7]), len(namesFilt3[8]), len(namesFilt3[9])]

print words1, words2, words3

plt.style.use('seaborn-colorblind')
labels = ['idiot', 'nerd', 'kill yourself', 'slut', 'moron', 'whore', 'rape bitch', 'fat', 'hate you', 'nobody likes you']
plt.xticks([0,1,2,3,4,5,6,7,8,9], labels, rotation=15)

#labels.set_xticklabels(labels.xaxis.get_majorticklabels(), rotation=45)

plt.plot(words1, 'bo')
plt.plot(words2, 'ro')
plt.plot(words3, 'go')
plt.xlim(-1,10)
plt.ylim(-1,45)
plt.xlabel('Occurrence')
plt.title('Words for bullying')
plt.ylabel('Number of tweets')
#plt.savefig('plot.pdf')
plt.show()
