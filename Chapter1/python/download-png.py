import urllib.request

# サンプル画像の保存

# urllib.request.urlretrieve("http://ff-theworld.club/wp-content/uploads/2016/01/12-28.jpg", "sample.png")
# ↓行儀の良い書き方
mem = urllib.request.urlopen("http://ff-theworld.club/wp-content/uploads/2016/01/12-28.jpg").read()

with open("sample.png", mode="wb") as f:
    f.write(mem)

print("保存完了しました。")
