''' 
Brady Neeb
Interpolation HW
Load with sage: load("interpolation.sage") 

Initial PNG created in sage:
>> var('y x'); y = (1 / ((25*x^2) + 1))
>> plot(y, x, (-1,1), figsize=(4,4))
'''


A = matrix(RR,11,11)
for row_num in range(0,11):
    for col_num in range(0,11):
        entry = row_num*(0.2)-1
        #print(row_num," column", col_num, "entry:", entry**col_num)
        A[row_num, col_num] = n(entry**col_num)

def f(x):
    return(1/(25*x^2+1))

v = vector(RR,11)
for row_num in range(0,11):
    entry = row_num*(0.2)-1
    v[row_num] = f(entry)


'''A\v to find values: (1.00000000000001, -2.36133335107525e-12, -16.8552036199169, 6.57909282608671e-11, 123.359728506907, -3.38928884957568e-10, -381.433823529999, 5.93274762650253e-10, 494.909502263440, -3.17612602884765e-10, -220.941742081971)'''

    
def p(v):
	return(v[0] +
		v[1]*x +
		v[2]*x^2 +
		v[3]*x^3 +
		v[4]*x^4 +
		v[5]*x^5 +
		v[6]*x^6 +
		v[7]*x^7 +
		v[8]*x^8 +
		v[9]*x^9 +
		v[10]*x^10)
		
solved = (A\v)
eq = p(solved)
        

# Re plot to solve interpolation
'''
>> plot(eq)
'''




