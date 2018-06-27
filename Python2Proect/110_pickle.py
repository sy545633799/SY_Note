import pickle

num1=100

num2=3.14

string = "str"

f = open('test.txt', 'wb')
pickle.dump(num1, f)
pickle.dump(num2, f)
pickle.dump(string, f)
f.close()