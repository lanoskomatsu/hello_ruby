file = "./fox.txt"
with open(file) as fileobj :
    text = fileobj.read()
    newtext = text.rstrip(".")
    wordlist = newtext.split(" ")
    print(wordlist)
