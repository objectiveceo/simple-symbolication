# simple-symbolication

This is a very simple repo to illustrate some concepts laid out in [a blog post](https://objectiveceo.com/posts/symbolication-simplified) about symbolication and how it works.  Here is a list of commands that were run during the creation of the blog post.

	$ xcrun swiftc example.swift -o a.out
	$ ./a.out
	$ lldb a.out
	(lldb) process launch
	(lldb) thread backtrace
	(lldb) quit
	$ xcrun nm a.out

	$ xcrun strip a.out
	$ xcrun nm a.out
	$ lldb a.out
	(lldb) pr la
	(lldb) th b
	(lldb) q

	$ xcrun swiftc -g example.swift -o b.out
	$ xcrun dwarfdump b.out.dSYM/Contents/Resources/DWARF/b.out
	$ xcrun dwarfdump --lookup=0x0000000100000e7d b.out.dSYM/Contents/Resources/DWARF/b.out