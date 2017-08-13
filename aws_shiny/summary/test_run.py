import sys
a = sys.argv[1:]
#a = "[a,b]"
str_input = " ".join(str(x) for x in a)
print(str_input)