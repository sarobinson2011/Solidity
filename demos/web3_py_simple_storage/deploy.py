from sys import os
from platform import python_branch
from solcx import compile_standard, install_solc

# whichever version u want to use
install_solc("0.8.0")

os.system("clear")

with open("./SimpleStorage.sol", "r") as file:
    simple_storage_file = file.read()
    print(f"checkpoint #1")

# now need to compile the Solidity in python

# compiled_sol = compile_standard(
#     {
#         "language": "Solidity",
#         "sources": {"SimpleStorage.sol": {"content": simple_storage_file}},
#         "setings": {
#             "outputSelection": {
#                 "*": {"*": ["abi", "metadata", "evm.bytecode", "evm.sourceMap"]}
#             }
#         },
#     },
#     solc_version="0.6.0",
# )
# print(compiled_sol)
