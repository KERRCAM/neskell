-- Just running some tester functions for haskell re-familiarisation

pow2 0 = 1
pow2 x = 2 * pow2(x - 1)

main = print(pow2 8)