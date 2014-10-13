

Fizzbuzz := Object clone

Fizzbuzz divide3 := method(number, if(number%3 == 0))

Fizzbuzz divide5 := method(number, if(number%5 == 0))

Fizzbuzz divide15 := method(number, if(number%15 == 0))

Fizzbuzz play := method(number, 
	result := ""
	if (divide15(number) == true) then (result = "Fizzbuzz") elseif(
		divide5(number) == true) then (result = "Buzz") elseif (
		divide3(number) == true) then (result = "Fizz")else (
		result = number)
		result
)

Fizzbuzz game := method(for(i, 1, 100, 1, (play(i) println)))


assert := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))

assert(Fizzbuzz divide3(3), true) 

assert(Fizzbuzz divide3(2), false) 

assert(Fizzbuzz divide5(5), true) 

assert(Fizzbuzz divide5(2), false) 

assert(Fizzbuzz divide15(15), true) 

assert(Fizzbuzz divide15(2), false) 

assert(Fizzbuzz play(3), "Fizz") 

assert(Fizzbuzz play(5), "Buzz") 

assert(Fizzbuzz play(15), "Fizzbuzz") 

assert(Fizzbuzz play(1), 1) 

assert(Fizzbuzz play(8), 8) 