% UiO Data Science Lecutres

# Lecture 1

- About Data Science
    - What is DS?
    - DS vs. BI vs. Analytics
    - Why DS and why now?
- Typical Data Science problems.
    * Supervised learning.
        + Typical data sets.
        + CRM and churn.
        + Customer case prioritization.
        + Campaign optimization.
        + Portfolio optimization.
        + Fraud detection.
        + Time series analysis and forecasting.
    * Unsupervised learning.
        + Typical data sets.
        + Recommendation.
        + Market baskets and association rules.
        + Pattern recognition & outlier detection.
        + Fraud detection, again.
- Tools used
    - Programming Laguages
    - Data Bases
    - Commercial Tools
    - Hadoop & Spark
- Python Basics: Data prep with python

## Homework

Some data preparation with python.

# Lecture 2

- Python leftovers.
    - Advanced core python.
    - Tricks.
    - Packages (sklearn, matplotlib)
- Some coding/tooling.
    - Git, markdown,
    - Testing.
    
## Homework

Visualizations or simple modeling in sklearn?

# Lecture 3

- What about huge data sets?
- Distributed data processing.
- Basics of Spark.
    * Installation
    * RDDs
    * RDD functionality, map, reduce et al.

## Homework 

Data prep in Spark

# Lecture 4

- More on Spark
    * Writing fuctions
    * Function Objects, communications
    * reading and writing RDDs
    * Data Frames
    * Deploying Spark clusters

# Lecture 5 - Regression in Spark

- Example data set. (Boston housing prices).
- Business cases (why explore the data?).
- Linear regression.
    * Regularization, ridge regression, lasso.
- Logistic regression, (GLMs?)
    * Example data set. (Titanic survivors/Telco Churn?)
    * Business cases.
- Regression theory, least squares, solvers, streaming.
- Interpretation of regression models.
- Non-linearities and how to deal with them.
- Example data set. (TBD)

# Lecture 6 - Data Quality, Features, etc.

- Data quality and the lack thereof.
- Reasons for and consequences of poor data quality.
- Outliers.
- Scaling and normalization.
- PCA.
- Word2Vec.
- Model Evaluation (people will know, show how to do it in Spark)
  - Goodness of fit.
  - Over-fitting, and how to prevent it.
  - More (on) evaluation criteria.
  - Use your brain!
  - Feature selection.
    * Forward & Backward selection.
    * PCA, revisited.

# Lecture 7 - Time series & Trees

- Time series in Spark: Bike data
- ARMA models and forecasting.
- Decision trees - theory.
- Re-visiting some example data sets using trees.
- Ensembles of trees.
- Advantages and disadvantages of trees and tree-based methods.

# Lecture 8 - Clustering

- Example data set: Armed Conflicts in Africa.
- Business cases: Charity, human aid, and news.
- Example data set: Food prices.
- Business cases ...
- Clustering methods, their advantages and drawbacks.
    * k-means
    * Gaussian mixture
    * LDA & PIC
- Feature transformation, revisited.- 

# Lecture 9 - Pattern Mining

- Example data set: Million Song Dataset.
- Association rules, FP-Growth.
- Applications.
- Collaborative filtering, ALS.

# Lecture 10 - Anomaly Detection

- Example data set: KDD99(?)
- Fraud detection business cases.
- Fraud detection methods.
    - Outlier detection.
    - Peer group analysis.
    - Social network analysis.

After this we have three more lectures, and some more topics: We might
have to be realistic about what we can and can't do...

## Focus: Social media

**NOTE:** Maybe do this earlier on so people can use this for their
projects?

- Why you won't use spark for this.
- Why it's very important anyway.
- REST APIs.
    * The twitter API.
        + Authentication, rules of conduct.
        + What is available and what isn't.
    * The facebook Graph API.
        + Authentication, rules of conduct.
        + What is available and what isn't.
- Web crawling, and HTML parsing.

## Focus: Communication

- The Hadoop file system (HDFS).
- Parquet files.
- MongoDB and python.
- Spark streaming, Kafka.
- Flask.
- JSON


# Lecture 11
# Lecture 12
