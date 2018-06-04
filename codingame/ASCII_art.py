#####myHeritage DevOps Interview######
#####codingame ASCII Art Duals Bash Solution####


import sys
import math

l = int(input())
h = int(input())
t = input()


print('Initialzes a matrix (two dimentional list) - a list containing lists', file=sys.stderr)
print('It contains a number of lists according to line height', file=sys.stderr)
print('each list is of 28 items (number of characters in input "ABC...YZ?")', file=sys.stderr)
print('all the items in the matrix are initialized to ""', file=sys.stderr)
print('--------------------------------------------------', file=sys.stderr)
number_of_characters_in_input=28
matrix_of_characters = [["" for x in range(number_of_characters_in_input)] for y in range(h)]

print('Parse the input string into the initialized matrix', file=sys.stderr)
print('--------------------------------------------------', file=sys.stderr)
for row_height in range(h):
    row = input() 
    
    letter_position=0    
    for letter_start in range(0,len(row),l):
        matrix_of_characters[row_height][letter_position]=row[letter_start:letter_start+l]
        letter_position += 1

print('Initialize an empty list according to line height', file=sys.stderr)
print('--------------------------------------------------', file=sys.stderr)
result_lines = ["" for x in range(h)]

print('Populate each row in the list with the concatenated letters', file=sys.stderr)
print('--------------------------------------------------', file=sys.stderr)
for row_height in range(h):    
    for input_letter in t:
        letter_position_in_matrix=ord(input_letter.lower())-ord('a')        
        if letter_position_in_matrix not in range(0, number_of_characters_in_input-1):
            print('If input letter is out of bounds - replace with "?"', file=sys.stderr)
            letter_position_in_matrix=number_of_characters_in_input-2
        
        result_lines[row_height]=result_lines[row_height]+matrix_of_characters[row_height][letter_position_in_matrix]

for row_height in range(h):
    print(result_lines[row_height])


