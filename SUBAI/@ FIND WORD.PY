import os

list = os.listdir()

s = input("inserisci una stringa da cercare: ").lower()

for el in list:
    if (el != "@ find word.py"):
        if s in open(el).read().lower():
            print(el)
          
w = input("operazione conclusa con successo")
    