from sklearn import datasets
from sklearn import svm
from sklearn.model_selection import ShuffleSplit

iris = datasets.load_iris()
x = iris.data
y = iris.target

iris_ss = ShuffleSplit(train_size=0.6, test_size=0.4, random_state=0)
train_index, test_index = next(iris_ss.split(x))

x_train, y_train = x[train_index], y[train_index]
x_test, y_test = x[test_index], y[test_index]
clf = svm.SVC()
clf.fit(x_train, y_train)
print(clf.score(x_test, y_test))
