module main

fn natural_numbers() int {
	// returning a type of int
	a := 1
	b := 2
	c := a * b
	assert (c == 2)
	return c
}

fn float_numbers() f32 {
	a := 1.0
	b := 2.0
	c := a * b
	assert (c == 2.0)
	return c
}

fn boolean_logic() bool {
	// 1 --> true
	// 0 --> false
	is_chad_single := true
	is_stacy_single := false // stacy is semi-happy in a relationship with Chris
	can_they_date := is_chad_single && is_stacy_single // no they can't
	will_chad_try := is_chad_single || is_stacy_single // yes he will
	chads_going_to_try := can_they_date || will_chad_try // can they date now OR will chad still try
	will_stacy_reject := !(is_stacy_single && chads_going_to_try) // NOT (is stacy single and is chad going to try?)
	return will_stacy_reject
}

/*

strings represent text in computer memory
char c = 'a'

string example = ['a', 's', 'k', ' ', 'm', 'e']

string ex1 := "ask me"

example == ex1

*/


fn text_representation() []string {
	dallas := 'Dallas Cowboys'
	steelers := 'Pittsburgh Steelers'
	chiefs := 'Kansas City Chiefs'
	assert (dallas == 'Dallas Cowboys')
	mut collection_of_teams := [''] // mutable array list
	/*
										1. they are a simple data structure or collection
										2. they represent a collection of objects that are continuously represented in memory
										3. they are the most used.
										4. they were created John Von Neumann (fact check this)
										5. they can be the basis for more complex data structures!!!!
									*/

	collection_of_teams << dallas // appending "Dallas Cowboys"
	// << push/append syntax for lists in V
	collection_of_teams << steelers // ["", "Dallas Cowboys"] + steelers --> ["", "Dallas Cowboys", "Steelers"]
	collection_of_teams << chiefs // ["", "Dallas Cowboys", "Steelers"] --> [...., "Steelers", "K.C. Chiefs"]
	// println(collection_of_teams)
	for team in collection_of_teams {
		if team == '' {
			println('\t \t \t THE NATIONAL FOOTBALL LEAGUE')
		}
		else {
			println('\t NFL Franchise: ' + team)
		}
	}
	return collection_of_teams
}

fn input_text_representation(name string) []string {
	gmail := '@gmail.com'
	yahoo := '@yahoo.com'
	hotmail := '@hotmail.com'
	email_list := [name + gmail, name + yahoo, name + hotmail]
	// println(email_list)
	return email_list
}

/*

Some advice if/elif/else statements:
	1. Base Condition is First If Branch
	2. Next Condtions Should be Covered
	3. Last Condition Should be Something With An Error or Unexpected Result --

*/


fn input_boolean_logic(will_he_smash bool) string {
	if will_he_smash {
		return 'Chad is Going to Smash Tonight'
	}
	else if !will_he_smash {
		return 'Chad is Going to Pornhub Tonight'
	}
	else {
		return 'Chris Did Something Bad To Chad'
	}
}

fn input_float_numbers(x f32) f32 {
	multi := 5.0
	// println(type(x)	//assert(type(multi * x) != int)
	return multi * x
}

fn input_natural_numbers(x int) int {
	multi := 5
	assert ((multi * x % 5) == 0)
	return multi * x
}

fn natural_numbers_tut() {
	ret_value := natural_numbers() // type int
	println(ret_value)
	println(input_natural_numbers(ret_value))
	assert (input_natural_numbers(ret_value) == input_natural_numbers(natural_numbers()))
}

fn float_numbers_tut() {
	flt32_ret_value := float_numbers()
	println(flt32_ret_value)
	println(input_float_numbers(float_numbers()))
	// assert(input_float_numbers(float_numbers()) != input_natural_numbers(natural_numbers()))
}

fn boolean_logic_tut() {
	// println(boolean_logic())
	println(input_boolean_logic(boolean_logic()))
}


fn make_markdown_for_emails(emails []string) {
	header := '# name: Johnny Appleseed '
	phone := '## contact: 420-420-6969'
	println(header)
	println(phone)
	println('## email information: ')
	for e in emails {
		println('')
		println(e)
	}
}

fn text_representation_tut() {
	println(input_text_representation('JohnnyApple'))

}

fn next_time() string {
	next_topics := ["passing multiple values to functions", "simple structs", "writing functions for simple structs",
	"testing functions for structs", "dive into more complex features of the language"]

	for t in next_topics {
		println(t)
	}

	thanks_for_watching := "Thanks for tuning in, I love you guys! Join the Discord and Follow if you enjoy the content"
	toss_out := "toss toss toss"

	println(thanks_for_watching)
	return toss_out
}

fn main() {
	/*
	text_representation_tut()
	boolean_logic_tut()
	float_numbers_tut()
	natural_numbers_tut()
	*/
	//make_markdown_for_emails(input_text_representation('JohnnyApple'))

	println(next_time())
}
