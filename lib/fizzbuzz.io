

Fizzbuzz := Object clone

Fizzbuzz divide3 := method(number, if(number%3 == 0))

Fizzbuzz divide5 := method(number, if(number%5 == 0))

Fizzbuzz divide15 := method(number, if(number%15 == 0))



assert := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))

assert(Fizzbuzz divide3(3), true) 

assert(Fizzbuzz divide3(2), false) 

assert(Fizzbuzz divide5(5), true) 

assert(Fizzbuzz divide5(2), false) 

assert(Fizzbuzz divide15(15), true) 

assert(Fizzbuzz divide15(2), false) 