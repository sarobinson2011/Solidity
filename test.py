import random as rd
import os
from time import sleep 

# os.system('clear')

class Solution():

    def myFunc(self, throws: int):
        for i in range(throws):
            dice1 = rd.randint(1, 6)
            print(f'dice #1 (roll-{i}) = {dice1}')
            # return dice1

    def clear(self):
        sleep(3)
        os.system('clear')


sol = Solution()
sol.clear()
sol.myFunc(5)

testvAR = rd.randbytes(22)
print(f'\ntestvAR = {testvAR}\n')



