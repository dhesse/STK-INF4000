from multiprocessing import Pool
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
import pandas as pd

data = pd.read_csv('../data/winequality-red.csv', sep=';')
var = list(data.columns)
var.remove('quality')

Xtr, Xte, ytr, yte = train_test_split(data[var], data.quality, test_size=0.3)

def work(d):
    model = RandomForestClassifier(n_estimators=d).fit(Xtr, ytr)
    return (model.predict(Xte) == yte).mean()

if __name__ == '__main__':
    p = Pool(6)
    ns = range(10, 100, 10)
    print p.map(work, ns)
