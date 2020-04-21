Functionality: 1
Encrypt and decrypt aren't working as of now. Having issues with the argument implementation in the encrypt method. The generate_total_shift method which takes the return value from the shifter method, isn't able to take in arguments such as key and value. Tried refactoring it into singular method and test did pass although it didn't function properly in the final method. Pretty sure its an issue with how its being implemented in the encrypt method.

Object Oriented Programming: 3


Ruby Conventions and Mechanics: 3
Most methods are named appropriately with usage of a module that takes care of all of the generating of the values for input in methods.

Test Driven Development: 3.2
Test coverage has consistently been 100.00% throughout the project with a few stubs used. Edge cases could use some more work overall. 17 runs, 19 assertions, 130 / 130 LOC (100.0%) covered. This is of course excluding the non functioning Enigma file which contains the encrypt method.

Version Control: 3.5
40+ commits, commit messages are thorough in describing what each commit holds. All Pull Requests show all added methods, tests, deletions, and overall coverage. Multiple branches, three total including master.
