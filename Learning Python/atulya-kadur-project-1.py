print("Hello World!")
num1 = int(input("Enter an integer: "))
num2 = int(input("Enter an integer: "))
print("The sum of the two numbers is:", num1 + num2)
# code here
myfruits = []
myfruits.append(input("Enter a fruit:"))
myfruits.append(input("Enter a fruit:"))
myfruits.append(input("Enter a fruit:"))
myfruits.append(input("Enter a fruit:"))
myfruits.append(input("Enter a fruit:"))
print(myfruits)
# code here
import pandas as pd
forest = pd.read_csv("/anvil/projects/tdm/data/forest/ENTIRE_COUNTY.csv")
forest.shape
forest.info()
forest.info
len(forest)