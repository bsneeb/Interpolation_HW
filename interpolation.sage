''' 
Brady Neeb
Interpolation HW
Load with sage: load("interpolation.sage") 

Initial PNG created in sage:
>> var('y x'); y = (1 / ((25*x^2) + 1))
>> plot(y, x, (-1,1), figsize=(4,4))
'''


# Function
def f(x):
	return 1 / ((25*x^2) + 1)

# Row maker function
def row_maker(t):
	r = []
	for i in range(11):
		r.append(t^i)
	return r

# Get values from -1 .. 1
A = []
for i in range(-10, 11, 2):
	x = f(i*0.1)
	A.append(x)

# Create matrix based on values 
M = matrix(QQ, [[-1, 0.0384615384615385], [-0.8, 0.0588235294117647], [-0.6, 0.1], [-0.4, 0.2], [-0.2, 0.5], [0.0, 1.0], [2.0, 5.0], [4.0, 0.2], [6.0, 0.1], [8.0, 0.0588235294117647], [1.0, 0.0384615384615385]])
M = n(M)

# Find polynomial interpolation
S = spline(M)







