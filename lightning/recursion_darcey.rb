###example of recursion

def listsum(numList):
   if len(numList) == 1:      
        return numList[0]
   else:
        return numList[0] + listsum(numList[1:])

print(listsum([1,3,5,7,9]))

A recursive method is a method in code that works by breaking itself 
up into subproblems over and over, until it reaches the base case.

A base case is the line of code that STOPS the recursion,
it takes your code out of that loop. The recursive part of the code
stops because it can no longer break itself into more subproblems, 
it has reached its most simple method. When the base case is reached,
the next part of the code is called and the answer is returned. 

STEPS TO RECURSION
series of simplifying method into sub problems until base case is reached, 
then piece together the subsolutions until the initial solution is solved

RULES

A recursive algorithm must have a base case.
A recursive algorithm must change its state and move toward the base case.
A recursive algorithm must call itself, recursively.
