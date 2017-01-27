% STK-INF4000 Notes - ML Basics
% Dirk Hesse
% Jan. 26th 2017

\newcommand{\EPE}{\operatorname{EPE}}
\newcommand{\E}{\operatorname{E}}
\newcommand{\R}{\mathbb{R}}
\renewcommand{\P}{\operatorname{P}}
\newcommand{\argmin}[1]{\underset{#1}{\operatorname{argmin}}}
\newcommand{\cA}{\mathcal{A}}
\newcommand{\Yhat}{\hat{Y}}
\newcommand{\fhat}{\hat{f}}
\newcommand{\Var}{\operatorname{Var}}

# Basic Probability

## Formal Definitions

- Sample space $\Omega$
- Outcome $\omega \in \Omega$
- Event $A \subseteq \Omega$
- $\sigma$-Algebra $\cA$
- Probability distribution $\P$
    - $\P[A] \geq 0 \quad \forall A$
    - $\P[\Omega] = 1$
    - $\P\left[\bigcup_i A_i\right] = \sum_i \P[A_i]$
- Conditional probability $\P[A | B] = \frac {\P[A \cap B]} {\P[B]}$,
  if $\P[B] > 0$.

## Conditional Probability

Study, 60% women, 40% men. High, low income.

        Female   Male
------ -------- ------ ------
 High     9%      11%    20%
 Low     46%      34%    80%
------ -------- ------ ------
         55%      45%

0.09, 0.11, 0.46, and 0.34 are called *joint* probabilities, while
0.55, 0.45, 0.2, and 0.8 are called *marginal* probabilities. The
*conditional* probability $\P(High|Female)$ can be calculated using
the formula

$$\P(x|y) = \frac{\P(x,y)}{\P(y)}$$

Here, $\P(High|Female) \approx 16\%$, while $\P(High|Male) \approx
24\%$.



## Random Variables

- Commonly denoted $X$ or $Y$.
- On continuous or discrete spaces.
- Formally
    - $X: \Omega \rightarrow \R$
- PMF
  $$f_X(x) = \P[X = x] =
      \P\left[\{\omega \in \Omega: X(\omega) = x\}\right]$$
- PDF $$\P[a \leq X \leq b] = \int_a^b f(x)dx$$
- CDF $$F_X: \R \rightarrow [0, 1],\quad F_x(x) = \P[X \leq x]$$
- Conditional: $$f_{Y|X}(y|x) = \frac {f(x,y)}{f_X(x)}$$

## Expectation Values



# Decision Theory

We have

- $X \in \mathbb R^p$ random input vector.
- $Y \in \mathbb R$ output vector.
- Looking for $f(X)$ predicting $Y$.

## Why?

- Prediction
    - Exact form of $f$ not too important.
    - Accuracy important.
        - How good can we do?
        - Assume $Y = f(X) + \epsilon$.
        - Our estimate $\fhat(X) = \Yhat$: 
          $$\E(Y-\Yhat)^2 = \E[f(X) + \epsilon - \fhat(X)]^2 =
          \E [f(X) - \fhat(X)]^2 + \Var(\epsilon).$$
- Inference
    - Which parts of $X$ are important for predicting $Y$?
    - What is the relationship between $Y$ and $X$?
    - What is the *functional* relationship between them? Linear?
    - **Exact form** of $f$ *is* important.

## How to get $f$?

We need a *loss function* $L(Y, f(X))$, most commonly squared error
loss, $L(Y, F(X)) = (Y - f(X))^2$.

How to choose $f$?

$$\EPE(f) = \E(Y - f(x))^2 = \int (y-f(x))^2 \Pr(dx, dy)$$

Now $\Pr(dx, dy) = \Pr(Y|X)\Pr(X)$, so

$$\EPE(f) = \E_X\E_{X|Y}([Y - f(X)]^2 | X)$$

and

$$f(x) = \argmin c\, \E_{Y|X} \left([Y - c]^2 | X = x\right)$$

This yields

$$f(x) = \E(Y|X = x)$$ {#eq:fEYX}

## K-Nearest Neighbors

KNN implements (@eq:fEYX) in a very simple way:

$$\fhat(x) = \frac 1 k \sum_{z \in N_k(x)}{z}\,,$$

where $N_k(x)$ are the $k$ closest training examples to $x$ from a
given training set.
