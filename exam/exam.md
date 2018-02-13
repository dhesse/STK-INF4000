[**Note:**]{} All of the questions below are multiple choice. One or
more answers are correct. Each question is worth one point, which is
gained if and only if all correct answers are checked [*and*]{} none of
the wrong answers are checked.

What will be the output of the python code listed below?

``` {.python language="Python"}
print range(10)[1:5]  
```

What will be the output of the python code listed below?

      print ['a', 'b', 'c'].index('b')

What will be the output of the python code listed below?

``` {.python language="Python"}
print {i: i**2 for i in range(10) if i % 2}
```

Given a [pandas]{} data frame [a]{}, given by

      category label  value
    0     high     a      0
    1      low     b      1
    2     high     c      2
    3      low     a      3
    4     high     b      4
    5      low     c      5

what command can be used to transform it into the following form?

    category  high  low
    label
    a            0    3
    b            4    1
    c            2    5

Given a [pandas]{} data frame [a]{}, given by

      category label  value
    0     high     a      0
    1      low     b      1
    2     high     c      2
    3      low     a      3
    4     high     b      4
    5      low     c      5

what command can be used to transform it into the following form?

              value
    category
    high          6
    low           9

What output will the following Apache Spark code produce (a Spark
Context is assumed to exist as [sc]{}).

``` {.python language="Python"}
  print (sc
    .parallelize(range(10))
    .map(lambda x: [x % 2, x])
    .reduceByKey(lambda x, y: x + y)
    .collect())
```

What output will the following Apache Spark code produce (a Spark
Context is assumed to exist as [sc]{}).

``` {.python language="Python"}
print (sc
  .parallelize(range(10))
  .filter(lambda x: x % 2 == 0)
  .map(lambda x:  x**2)
  .reduce(lambda x, y: x + y))
```

What is the correct ordering of data storage elements in a computer by
latency for an access by the CPU, from fastest to slowest?

Cache, RAM, Hard Disk RAM, Cache, Hard Disk Hard Disk, Cache Ram

What data format does the MongoDB database use internally?

BSON, a binary version of JSON. ASCII strings. Python dictionaries.

Which of the following code fragments can be used to interact with a
REST API in Python?

Which of the following statements about decision trees are correct?

Trees of very low depth tend to show high bias. Variable importance can
be estimated from the splitting points chosen by the algorithm and
resulting information gain. Trees of excessive depth tend to show high
variance.

Which methods are available to help towards overcoming the tendency of
trees to over-fit the data?

Splitting the available data in train and test sets. Train the tree on
less data. Pruning. Using ensembles of tress in random forests.

Which loss functions can be used with the gradient boosting algorithm?

Huber Loss. Exponential loss. Any sensible loss function with well
defined gradient.

Which of the following statements about $k$-fold cross-validation are
correct?

$k$-fold cross-validation helps controlling correlations between
variables. $k$-fold cross-validation is an effective method to identify
issues related to over-fitting. The choice of $k$ must be made with the
available data quantity in mind.

Which of the methods listed below can be used for eliminating variables
in a machine learning model?

The lasso method (for regression models). Ridge regression (for
regression models). Train-test split. Forward step-wise variable
selection.

The elbow method is used to determine the optimal numbers of clusters
$k$ in a data set. The resulting plot looks as follows.

![image](k-means){width="\textwidth"}

What will the optimal number of clusters be?

$k$ cannot safely be determined from the plot. 3 4 1

You have fitted a logistic regression model that you use to understand
the factors contributing to a person smoking or not. You have an
indicator variable

$$X_{\mathrm{male}} = 
  \begin{cases}
    1 & \mbox{if person is male}\\
    0 & \mbox{if person is female}.
  \end{cases}$$

The corresponding regression coefficient is $\beta_{\mathrm{male}} =
0.21$. Which of the following statements holds true provided your model
is valid and the coefficient has a low $P$-value?

The odds of a female smoking are twice as high as for a male. The odds
of male smoking are 23% higher than for a female. The odds of male
smoking are 21% higher than for a female. The odds of female smoking are
21% higher than for a male.

Which of the following problems should be solved using a classification
algorithm?

Grouping similar candidates for a job together. Predicting if an email
is spam or not. Predicting the price of an item. Predicting the species
of a bird.

Which of the following algorithms can be safely used for classification
problems?

Linear regression. Decision trees. Agglomerative clustering. Linear
discriminant analysis.

Can classification be used for anomaly detection?

Yes, a classification algorithm should be used to classify an
observation as anomalous. No, due to the skew in data towards the
non-anomalous labels one cannot use classification algorithms. It is
often not advisable to use classification algorithms to detect anomalous
behavior but can, if enough data is available and correct class weights
are used, be a useful method.
