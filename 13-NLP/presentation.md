% Week 14 - Natural Language Processing
% STK-INF 3000/4000
% Dirk Hesse

## The Plan

- Week 14 (May 8th)
    - Data pipelines in Apache Spark.
	- Natural Language Processing 101.
- Week 15 (May 15th)
    - Presenting results - the open source way.
        - Javascript 101
        - JQuery, Vue.js and Google Charts
		- Serving data with Flask.
- Week 16 (May 22nd)
    - What we missed.
        - Neural Networks and deep learning.
        - Support vector machines.
        - Heuristics.
    - Review and preparation for the exam.
    - Q&A.

---

## NLP-Applications

- Mostly Solved
    - Spam Detection
    - Part-of-speech tagging
    - Named entity recognition
- God Progress
    - Sentiment Analysis
    - Coreference resolution
        - E.g. Jim told Jack **he** shouldn't do it again.
    - Word sense disambiguation
    - Machine translation
    - Information extraction
- Hard
    - Question answering
    - Paraphrasing
    - Summarization
    - Dialog

---

# Why is NLP Hard?

## Mainly Disambiguity

- Teacher Strikes Idle Kids
- Red Tape Holding Up New Bridges
- Fed raises interest rates

---

## What else is Difficult?

- Non-standard language (Twitter).
- Idioms
- Neologisms
   - retweet
   - unfriend

---

## Regular Expressions

- Very often used
- Very powerful

---

## Size of text

- N: Number of tokens.
- V: Vocabulary.

Lemma: $|V| \sim O\left(\sqrt N\right)$

---

## Tokenization issues

- Norway's economy $\to$ Norway Norways?
- we're, I'm $\to$ we are, I am?
- Lowercase $\to$ lower-case?
- lower-case $\to$ lowercase lower case?
- B.Sc., PhD. $\to$ ???
- Lebensversicherungsgesellschaft $\to$ ?!?!

---

## Normalization

- U.S.A. $\to$ USA
- Lowercase
    - Some exceptions: US vs us
- Lemmatization
    - am, are, is $\to$ be
- Stemming
    - Stems: Smallest piece making up a word
    - Affixes: Things appended
	- Reduce all words to stems

---

## Sentence Segmentation

- ?!: Easy
- .: Tricky.
    - Usually some ML model.

---

## Language Modeling

- Assign *probability* to a **phrase**
    - Machine translation
    - Spell correction
    - Speech recognition
    - Summarization, Question answering

$P(W) = P(w_1w_2\ldots w_n)$ or $P(w_n|w_1w_2\ldots w_{n-1})$

---

## Word Probabilities

By the chain rule

$$P(w_1w_2\ldots w_n) = \prod_i P(w_i|w_1\ldots w_{i-1})$$

Could we just compute

$$\begin{align}P(\mbox{done} | \mbox{after all is said and}) =\\
\quad \frac{P(\mbox{after all is said and done})}{P(\mbox{after all is said
and})}\end{align}$$

---

## Markov Assumption

$$P(\mbox{done} | \mbox{after all is said and}) \approx 
P(\mbox{done} | \mbox{and})$$

or 

$$P(\mbox{done} | \mbox{after all is said and}) \approx 
P(\mbox{done} | \mbox{said and})$$

---

## More Formally

$$P(w_1w_2\ldots w_n) \approx \prod_i P(w_i|w_{i-k}\ldots w_{i-1})$$

---

## Simplified Models

#### Unigram Model

$$P(w_1w_2\ldots w_n) \approx \prod_i P(w_i)$$

#### Bigram Model

$$P(w_1w_2\ldots w_n) \approx \prod_i P(w_i|w_{i-1})$$

---

## Where N-grams fail

- They lack *long-distance dependencies*.
    - The new strategy we had implemented for increasing revenue in
      our shops seemed to **fail**.
- Often work well enough.

---

## Getting N-gram probabilities

$$P(w_2|w_1) = \frac{\operatorname{count}(w_1,
w_2)}{\operatorname{count}(w_2)}$$

- Often use logs.
    - Avoid underflow.
	- Addition instead of multiplication.

---

## N-Gram corpa

- [Google Books N-Gram Viewer][gb]
- [Google Research N-Grams][gr]

[gb]:https://books.google.com/ngrams
[gr]: https://research.googleblog.com/2006/08/all-our-n-gram-are-belong-to-you.html

---

## Model Validation

- Ideally, use on real-world application (extrinsic).
    - Machine translation.
    - Sentiment analysis.
    - Drawback: Slow
- Alternative: Intrinsic evaluation
    - Perplexity.
        - Given a bunch of words, predict the next one.
        - Proposed by Shannon.
    - Not a good metric generally.
    - Sometimes useful.

---

## Perplexity

$$
\begin{align}
PP(W) &= P(w_1w_2\ldots w_N)^{-N} \\
&= \sqrt[N]{\frac 1 {\prod_i P(w_i|w_1w_1\ldots w_{i-1})}}\\
& \approx \sqrt[N]{\frac 1 {\prod_i P(w_i|w_{i-1})}}
\end{align}$$

---

## Issues With n-grams

- Generally, get a $|V|^N$-dimensional space.
- Often n-grams not seen in training data.
- Then $p$ is predicted 0.
- This can cause issues.
- Laplace smoothing $P(w_2|w_1) = \frac{c(w_1, w_2) + 1}{c(w_1) +
  |V|}$.
    - Actually not ideal for language modeling, ok for e.g. text
      classification.
    - Backoff, interpolation.
    - Replace unknown words with `<UNK>`.

---

## Large N-Gram corpa

- Pruning
- Smart data structures
- Smoothing
    - Often backoff variant.

---

## Text classification

- Spam recognition
- Author attribution
- Gender identification
- Sentiment analysis
- Article subject

---

## Naïve Bayes Classifier

Given a document $d$ and a class $c$,

$$P(c|d) = \frac{P(d|c)P(c)}{P(d)}$$

We now engineer some features $X(d)$ and classify

$$C(d) = \underset{c}{\operatorname{argmax}} P(X|c) P(c).$$


---

## Practical Issues in Text Classification

- No training data: Hand-written rules.
- Very little date: Naïve Bayes
    - Or get more data.
    - Bootstrapping.
- Lots of training data: Trees, Logistic regression, SVM.
- Huge amounts of data: Naïve Bayes for performance ...

---

## Questions?

