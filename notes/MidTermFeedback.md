% STK-INF 4000 - Midterm Feedback

# General remarks

The indicative scores will have no influence on the final course
outcome. All groups passed and it was a pass-fail delivery. The
indicative grades are just for orientation.

# Group 1

- André Sevaldsen Douzette,
- Kristofer Munsterhjelm,
- Joël Fomete and
- Maria Hjelset Barbosa

## Feedback

The presentation was very professional and started out rather clear,
but lost the red thread to some degree and it was not always clear how
the individual parts fit together. You could clarify much of this
during the question session. 

We were pleased with the data ingestion part, you have done a great
job integrating different data source types and even did some web
scraping. It would have been nice to see a few plots on data
quality/sanity nothing fancy, just demonstrating that you e.g. don't
have any crazy outliers, missing values etc..

The regression models you've build seemed well thought through and
executed. As mentioned in the discussion after the presentation you
might have to do some more work on the neural network model. Getting
rid of the modified one-hot encoding would be a first step. In
addition would it be preferable to start with a simpler model and try
to demonstrate that e.g. because of nonlinearities you need a fancier
model.

Your code looks clean, though here and there a little refactoring
might be a good idea, e.g. the file `fetchWeatherData.py` contains
awfully lots if-else statements. A few more general sentences about
the project in the README would be great. The fact that you created a
git repository is a big plus.

All in all we were very pleased with the project and presentation and
would give an indicative grade of A.

# Group 2

- Anne Martine Myking
- Lisa Li

## Feedback

You presented an interesting and very targeted project professionally
and clearly. You could have gone a little more into technical details
about your data handling without causing distractions from you
message.

Your data acquisition should ideally happen using a script similar to
the one we had in the lecture rather than tweepy, and try to use
MongoDB as a backend rather than plain files. It will be easier in the
long rung.

For the next phase of your project you'll have to start doing some
modeling. I'd suggest you start with this as early as possible since
it's not an easy task and can easily cost more time than one thinks.

We were pleased with the idea and presentation and would give an
indicative score of A for those. The python implementation is a little
weak and would get an indicative C.

# Group 3

- Maria Kalitina
- Matias Hermanrud Fjeld
- Wanjuan Ren

## Feedback

You have taken a project from industry which we think is very
positive. Real-world data can be very messy and it's commendable
you have taken this up. The data ingestion and preparation part of the
project made a very positive impression and this will be a solid
foundation for further work.

Your presentation was well prepared and easy to follow for the most
part though a few more sentences about how the individual pieces fit
together would have been nice.

The analytics part was more than fair for the mid-term delivery, but
you will have to take a more systematic approach for the rest of the
project and look into things like target definition and feature
selection in more depth.

We were pleased to see that you made a git repository, which however
could benefit from one more level of folders separating source code
and presentation. Some parts of the longer notebooks could be moved
into script files in order to achieve reusability of your code.

All in all we were very pleased with your project and would assign an
indicative grade of A.

# Group 4

- Susanne Tande
- Simon Brant

## Feedback

Your project has a very clear and straight-forward scope and was well
presented. The plan to make a travel planning app is very
interesting. The thing that is really remarkable for your project is
the work you put in the code. The parts of your data pipeline are well
documented, short and even have tests. We think you did a very good job
with this. A little bit of icing on the cake would be if you made a
git repository in UiO's private github server.

For the rest of the project you should focus on the modeling part and
try to approach this as systematic as you did with the data
processing. Start with a simple model and few features and take it
from there.

As indicative score your project gets a B+.

# Group 5

- Wei Liu, 
- Felix Schweinfest,
- Harjeet Harpal, 
- Fransis Kolstø, 

## Feedback

It's commendable you took on an industry project. You have faced some
of the usual challenges when dealing with real-world data such as
missing values, outliers etc. and did a great job working with what
you have. The target of your project was quite clear and stayed so
throughout the presentation.

The code repository is reasonably clean and it's great that you went
the extra mile to create a repository on github. Adding one extra
folder to hold your scripts would not hurt and neither would a few
more sentences (and maybe a plot since you made some nice ones) in
your README. Once you've committed files in git, there is no need to
save a version with most of the content commented out.

For the last part of the project you should get the clustering under
control and start building simple models on which you can expand later
on.

Over all, the indicative score is A.

# Group 6

- Sylvia Qinghua Liu
- Vegard Stikbakke
- Tor-Håkon Hellebostad

## Feedback

Your project had one of the most polished business ideas, which we
were very pleased with. It was clearly presented and pleasant to
follow. Some of the slides were rather busy, sometimes less is more
when presenting an idea. The app prototype screen-shot was a nice
touch.

You did a good job on data acquisition and cleansing, the use of Spark
definitely earns you some extra points. Some automated way to include
Norwegian holidays and bridge days would be nice.

The modeling part was performed with nice depth without loosing view
of the greater picture and was certainly one of the strongest points
of an overall strong project.

For the future looking into autoregressive models might be an
interesting line of investigation. 

The existence of a git repository on github is a nice extra, it could
tough benefit from some folder structure separating code from data and
one or two more sentences on the general scope in the README would be
nice.

Over all, the indicative score is A.

# Group 7

- Maryam Zolghadr

## Feedback

You presented a rather straight forward idea very clearly and without
unnecessary fuss. Maybe doing one or two training runs would have made
the presentation a little more polished. Having to change locations
probably didn't help matters in terms of nervousness.

We were pleased to see that you chose web-scraping to collect your
data and in this way you managed to compile a very interesting data
set that you've analyzed in a thorough enough way for the first
pass. It would be interesting to see if you can modify your scraping
script to collect some additional information and if that helps model
performance.

You did a good job inspecting the quality of your data and did a
thought job handling missing values. Tree models might help you to
cope with these in a more automated fashion.

You seem to have forgotten to attach the code you've used to your
email and should do so as soon as possible.

As an overall indicative score for the presentation part, I'd assign a
B-.

# Group 8

- Børge S. Andreassen
- Øyvind Gylver

## Feedback

You've decided to work with a relatively difficult data set and did a
great job creating an API for it. Your code is clear and reasonably
well structured, however it could benefit from breaking it into
several files and smaller units (your classes are relatively
big). Getting everything under source control and uploading it to
UiO's github server would be a nice touch.

During the presentation it was not always very clear what the final
aim is. We would have liked this point to have been made a little more
clear. In terms of data preparation clearly a lot of work has gone
into your API and for further investigations you might benefit from
taking a step back and taking a look at the overall structure of and
trends in your data with respect to your overall goal. The latter
might become a lot more clear during such a process.

As an overall indicative score we'd assign a B+.
