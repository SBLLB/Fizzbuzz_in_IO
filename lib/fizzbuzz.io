

Fizzbuzz := Object clone

Fizzbuzz divide3 := method(number, if(number%3 == 0))



assert := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))

assert(Fizzbuzz divide3(3), true) 