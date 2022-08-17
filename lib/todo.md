1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

boolean = task_includes(text)

boolean: true or false
text: a string

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

task_includes("") => false
task_includes("hello world") => false
task_includes("#TODO buy coffee") => true
task_includes("#todo buy coffee") => true
task_includes("#TO-DO buy coffee") => false
task_includes("buy coffee #TODO") => true
task_includes(nil) => false

# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error

Encode each example as a test. You can add to the above list as you go.