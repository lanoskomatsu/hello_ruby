from sklearn import datasets
from sklearn import linear_model
import numpy as np
import matplotlib.pyplot as plt
from pandas import DataFrame

# データセットを読み込む
boston = datasets.load_boston()
boston_df =DataFrame(boston.data)
boston_df.columns = boston.feature_names
boston_df["price"] = boston.target
print(boston_df[:10]) # 先頭の10行だけ

# 訓練データを作る
rooms_train = DataFrame(boston_df["RM"])
y_train = boston.target
model = linear_model.LinearRegression()
model.fit(rooms_train, y_train)

x = np.arange(rooms_train.values.min(), rooms_train.values.max(), 0.1)
rooms_test = DataFrame(x)
prices_test = model.predict(rooms_test)

plt.scatter(rooms_train.values.ravel(), y_train, c = "b", alpha = 0.5)
plt.plot(rooms_test.values.ravel(), prices_test, c = "r")
plt.title("Boston House Prices dataset")
plt.xlabel("rooms")
plt.ylabel("price $1000's")
plt.show()
