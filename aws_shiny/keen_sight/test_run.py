

def hasAllUniqueCharsNoDS(inputstring):
    #no data structures
    #O(n^2)
    for char in inputstring:
        foundcount=0
        for char2 in inputstring:
            if char==char2:
                foundcount=foundcount+1
            if foundcount>1:
                print("False")
    print("True")

inputstring = "12341"
new = hasAllUniqueCharsNoDS(inputstring)