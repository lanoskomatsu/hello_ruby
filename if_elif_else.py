from random import randint
point =randint(0,100)

if point >= 80:
    result = "Aクラス"
elif point >= 60:
    result = "Bクラス"
elif point >= 30:
    result = "Cクラス"
else:
    result = "不適合"

print(f"{point} 点: {result}")

