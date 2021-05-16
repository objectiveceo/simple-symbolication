func foo() {
	print("foo")
	bar()
}

func bar() {
	print("bar")
	baz()
}

func baz() {
	print("baz")
	var x: String? = nil
	x!
}

foo()