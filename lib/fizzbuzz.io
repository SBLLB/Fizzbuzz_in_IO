

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


expect := method(actual, expected, if(actual == expected, "PASS" println, "FAIL" println))

it := method(description, expectation,
	description println,
	expectation println
)

it("should be divisible by three", 
	expect(Fizzbuzz divide3(3), true) 
	)

it("should not be divisible by three", 
	expect(Fizzbuzz divide3(2), false) 
	)

it("should  be divisible by five", 
	expect(Fizzbuzz divide5(5), true) 
	)

it("should not be divisible by five", 
	expect(Fizzbuzz divide5(2), false) 
	)

it("should  be divisible by fifteen", 
	expect(Fizzbuzz divide15(15), true) 
	)

it("should not be divisible by fifteen", 
	expect(Fizzbuzz divide15(2), false) 
	)

it("should say Fizz when divisible by 3", 
	expect(Fizzbuzz play(3), "Fizz") 
	)

it("should say Fizz when divisible by 5", 
	expect(Fizzbuzz play(5), "Buzz") 
	)

it("should say Fizz when divisible by 15", 
	expect(Fizzbuzz play(15), "Fizzbuzz") 
	)

it("should return a number when not divisible by 3, 5 or 15", 
	expect(Fizzbuzz play(4), 4) 
	)
