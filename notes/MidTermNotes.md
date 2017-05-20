% STK-INF 4000 - Midterm presentation Notes

# 10:00 - 10:30

- Members
    - André Sevaldsen Douzette,
    - Kristofer Munsterhjelm,
    - Joël Fomete and
    - Maria Hjelset Barbosa
   
- Idea
    - Well presented, clear.
    - Clear idea on target groups.
    - Nice idea: Do train delays increase road traffic?
- Data
    - Three data sets.
    - Scraping.
    - Had to do some interpolation on weather type.
        - Seem to have done something reasonable.
    - Got several different formats.
        - SQlite, scraping, excel.
- Modeling
    - Rather advanced (linear) models.
    - Don't seem to have used Python/Spark.
    - Pretty clear focus on problem, some of it a little tangential.
- Notes
    - Some slides very busy.
    - How did they come up with the buckets of delays?
    - Why NN?
    - Try to get significance of weather.
    - Why modified hone-hot?
    - A little unclear what they predict in terms of delays...


# 10:30 - 11:00

- Members
    - Anne Martine Myking
    - Lisa Li

- Idea
    - Clear.
    - Small(ish) scope.
- Data
    - Filtered out re-Tweets (good!).
    - Used streaming and search API.
        - Looked at meaningful metrics.
        - And various ones.
    - Thought of things like abbreviations, slang etc.
- Modeling
    - Looks like haven't done much modeling yet.
        - Some nice ideas.
- Notes
    - Some words don't necessarily mean bullying (e.g. 'fat').
        - They were aware of that.

# 11:00 - 11:30

- Members
    - Maria Kalitina
    - Matias Hermanrud Fjeld
    - Wanjuan Ren
- Idea
    - Taken by Amedia.
    - Clear focus, clear target.
- Data
    - JSON aggregate reader data.
    - Many features.
        - Had to do one-hot.
        - Sometimes 'reverse one-hot'.
    - Missing values.
    - Skew.
    - Did a overall good job, esp. on data prep.
- Analysis
    - A little shaky, not too well thought through, but fair.
    - Don't seem to have used feature selection algorithms.
    - Interesting: Newspaper clustering.
- Notes
    - Need to get clearer focus on why clustering.
    - What to do with clustering for other analysis.
    - Sometimes people talking at same time.
    
# 11:30 - 12:00

- Members
    - Susanne Tande
    - Simon Brant
- Idea
    - Pretty clear.
    - Rather straight forward, but interesting twists (e.g. travel
      planner).
    - Plan to use Google API.
- Data
    - Multiple sources.
        - Bysikkel csv, Stations in JSON -> MongoDB.
    - Used bs4.
- Modeling
    - Lots of homework on clustering.
    - Don't seem to have done a lot of careful analysis.
    - Lots of homework on prediction.
- Notes
    - Why Alexander Kiellands Pl.?
    - Clustering on stations?
    - Predict probability of finding 1+ bikes/locks at given time in
      future.
    
    
# 12:00 - 12:30

- Members
    - Chi Zhang,*out?
    - Wei Liu, 
    - Felix Schweinfest,
    - Harjeet Harpal, 
    - Fransis Kolstø, 
- Idea
    - Basically from Telenor
    - Clear idea, clear target.
- Data
    - Got a csv
    - Did some research into things like outliers.
    - Had to do some dealing with missing data, periodicity...
    - Youtube scraping + manual labeling.
    - Used MongoDB to store feature vectors.
- Modeling
    - Did clustering
        - Found some limitations.
        - Used clustering output for prediction.
    - Influence on campaign data.
    - Did predictive analysis
- Notes
   - Need to bin.
   - Label axes.


# 12:30 - 13:00

- Members
    - Sylvia Qinghua Liu
    - Vegard Stikbakke
    - Tor-Håkon Hellebostad
- Idea
    - Pretty clear idea, a little cluttered.
    - Nice business-y 'market niche' approach.
    - Interesting 'prototyping screen-shot'.
- Data
    - Vegvesen data.
        - Car counts.
        - Bike counts.
        - Weather.
    - Calendar data.
        - 'Special day' ...
- Modeling
    - Clustering, seems to be common theme...
    - Nice: Did the right train-test split for non-autoregressive
      model.
    - Very thorough.
- Notes
    - Very 'executive' presentation.
    - Impact of app on traffic itself.
    - What's 'special day'?
        - Be careful to be as objective as possible.
    - Dip in car counts -> could be congestion?
    - Reusability.
    - Autoregressive models?

# 13:30 - 14:00

- Members
    - Maryam Zolghadr
- Idea
    - Pretty clear cut, maybe a little too simplistic.
    - Did some research around.
- Data
    - Web scraping
        - Apartments only.
    - Usual columns, fair selection.
    - Did one-hot encoding.
    - Has missing values. Took fair care of it.
- Modeling
    - Linear modeling
        - Fair depth
    - Random forests
- Notes
    - Could you have gotten more columns?
    - Slide no. 6: Medians?
    - Have thought about summing up monthly cost types?
    - Did you filter outliers.
    - Less digits.
    
    

# 14:00 - 14:30

- Members
    - Børge S. Andreassen
    - Øyvind Gylver
 - Idea
    - Pretty clear cut, a little fuzzy on specific goals.
    - But that's fine.
- Data
    - ACLED - Talk to API
    - Put in MongoDB for future reference and reduce strain on API.
    - Geopandas to work with geo data.
    - Have a data loading module.
- Modeling
    - Clustering
        - Didn't find k, kind of predictably ...
    - Did their clustering per-country.
        - Might be problematic -> see lots of points at Congo's borders.
- Notes
    - Do they talk to ACLED API?
    - Nice: Links in presentation.
    - Actors need to be taken into account.
    - Make an official ACLED python package?
