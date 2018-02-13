% STK-INF 4000 - Final Presentation Notes

- 9:00 - 9:30
    - André Sevaldsen Douzette, (Master)
    - Kristofer Munsterhjelm, (Master)
    - Joël Fomete and (Master)
    - Maria Hjelset Barbosa (Master)
    
Nicely presented, clear motivation. Thought about target
groups/companies. Used web scraping to get weather data. SQLite
database file for train delay data. Excel file for road traffic. Spent
quite a bit of time for the introduction. Maybe my own fault ... No
axis labels or ticks (slide 10). Very nice work on road traffic
prediction.

How did he come up with the delay intervals in discretization?
Middle temperature?
Maybe some over-fitting going on using the train delays?

Nice definition of delay, didn't only look at the same line. Might
have issues concerning destination. Used gradient boosted trees and
NN.

Why no simpler baseline?

Almost incredibly good prediction on delay. Probably very interesting
for NSB. (Slide 23).
    
- 9:30 - 10:00
    - Anne Martine Myking (Bachelor)
    - Lisa Li (Master)

Clear intro. Clear message. Found training set (comments of some
sort).

Where did the training set come from?

Did data collection from Twitter, storing to MongoDB. Some basic NLP,
stop words removal, tokenization. Used Spark. Used TF-IDF.

What were train-test rations?
Why different results w/ and w/o pipeline?

Clear on limitations, etc.

Bullies probably don't use too subtle language...

Modeling needs some improvement, but then we didn't do much NLP.

- 10:00 - 10:30
    - Maria Kalitina  (Master)
    - Matias Hermanrud Fjeld  (Master)
    - Wanjuan Ren  (Master)

Amedia data, churn. Could have taken it a little slower on the
intro. Relatively clear. Did everything in Spark to scale. Testing.

Nice work on pipeline. Removing bots. Not 100% clear what the data
looks like. 

Did they use a threshold of number of accesses in the first period to
count her as active?

Bar plots w/ logistic regression coefs, z-scores?
Did they do a train/test split? CV?
Trees? Single trees?


- 10:30 - 11:00
    - Susanne Tande
    - Simon Brant

Clear aim. Some background info. CSV + API + yr. Google maps API. Did
clustering on stations to limit number of models.

What were features of k-Means?
How does the input data look like?
Train-test? CV?
Did they use biking time to end *station*? Does it matter?

Did actually make an app, quite impressive.

Do something prophet-like?
Could use a caching (decorator?).



- 11:00 - 11:30
    - Wei Liu, (Master)
    - Felix Schweinfest,(Bachelor)
    - Harjeet Harpal, (Master)
    - Fransis Kolstø, (Bachelor)

Clear goal. Could have been supported by a slide.
Would have been nice to look at some raw data first.
Slides would be nice.

Could normalize errors.

Could talk a little about applied tests.

Could label plots.

Could take out plots and make presentation.

Did daily aggregation, maybe not very useful ...

Campaign effectiveness ...

Made an app as well@


- 11:30 - 12:00
    - Sylvia Qinghua Liu (PhD)
    - Vegard Stikbakke (Bachelor)
    - Tor-Håkon Hellebostad (External/Bachelor)
    
Much more business-y. Clear goal and structure. Liked they switched
around who talks about what. Seems to be a well-working group. Some
scraping for weather data. Statens Vegvesen data.

Doesn't yr have an API?

Residual plot: Scale missing.

Larger audience presentation: Talk a little more about data.

Labels: Volume [Cars]

R^2 @ 4pm: 0.6 ...

Product: Better name for baseline.
Product: Plot days linearly.



- 12:30 - 13:00
    - Maryam Zolghadr (Master)

Nice intro, re-stating goal, clear-cut scope. Used API to get data,
scraped before.

Property sold 2015-2017... Trend?

District overlap probably doesn't matter as a feature.

Outliers removed. Maybe better loss function better choice?

What ensemble of trees.

Some preprocessing issues on linear regression.

Could use linear distance from center instead of latitude, longitude.

Didn't really do a product...

- 13:00 - 13:30
    - Børge S. Andreassen (Post-Master)
    - Øyvind Gylver (Post-Master)

Nice, clear presentation. Repeating some of the basics, not too much.

Used prophet quite extensively.

Moon calendar?! For Islamic holidays... 

Used Bokeh server architecture. Made a very nice app, doing mostly
filtering + prophet in the back. Should do more filtering on
e.g. actors, event type.

Quick fix: Casualties only.

Show prophet model components.

Maybe prophet is not 100% the right tool ...

