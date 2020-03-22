from sklearn import datasets
from sklearn import svm, metrics
import matplotlib.pyplot as plt

digits = datasets.load_digits()
x = digits.data
y = digits.target
n_train = len(x) * 2 // 3

x_train, y_train = x[:n_train], y[:n_train]
x_test, y_test = x[n_train:], y[n_train:]

clf = svm.SVC(gamma=0.001)
clf.fit(x_train, y_train)

accuracy = clf.score(x_test, y_test)
print(f"正答率{accuracy}")
predicted = clf.predict(x_test)
n_error = (y_test != predicted).sum()
print(f"誤った個数: {n_error}")

print("classification report")
print(metrics.classification_report(y_test, predicted))
print("confusion matrix")
print(metrics.confusion_matrix(y_test, predicted))

imgs_yt_preds = list(zip(digits.images[n_train:], y_test, predicted))
for index, (image, y_t, pred) in enumerate(imgs_yt_preds[404:416]) :
    plt.subplot(3, 4, index + 1)
    plt.axis("off")
    plt.tight_layout()
    plt.imshow(image, cmap="Greys", interpolation="nearest")
    plt.title(f"t: {y_t} pre: {pred}", fontsize=12)
plt.show()
