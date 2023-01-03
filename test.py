import random as rd
import os
from time import sleep 

# os.system('clear')

class Solution():

    def myFunc(self):
        for i in range(9):
            dice1 = rd.randint(1, 6)
            print(f'dice #1 (roll-{i}) = {dice1}')

    def clear(self):
        sleep(5)
        os.system('clear')


sol = Solution()
sol.clear()
sol.myFunc()

testvAR = rd.randbytes(22)
print(f'\ntestvAR = {testvAR}\n')



