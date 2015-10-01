# 1.2 The Command Line Reflection

A shell is the basic interface to the operating system, implemented in different ways in Windows / MacOS / Unix but in each case is an interface that allows the creation and manipulation of the basic elements and services of the OS (files and folders). Interestingly shells can be either command line or graphical, so effectively any interface that we use to interact with the OS is considered a shell.

Bash is a specific implementation of a shell, written for UNIX by Brian Fox. 

The most challenging part of this material is definitely memorizing all of the commands that I wasn't already familiar with, especially things like export. Also the functionality of pushd and popd takes a little getting used to, the notion of building a history list as you move forward through directories in order to be able to backtrack is a new one, but pretty cool. 

I was able to use all the commands without issue. I think the most important to know are probably the fundamentals that allow navigation and orientation through the directory structure (cd, ls, pwd).

 

pwd = print working directory

ls = list contents of directory

mv = move file or directory

cd = change directory

../ = i don't actually know this one 

touch = creates a file if none exists, otherwise updates the file access timestamp

mkdir = make a directory

less = page through a file

rmdir = remove a directory

rm = remove a file

help = pulls up the help documentation

# 1.3 Introduction to Version Control Reflection

Git is a piece of software that handles Version Control on code that you're writing. Git is installed locally on your machine and can communicate with other instances of Git on anyone else's machines to sync each other's work. GitHub is a cloud based instance of Git that centralizes the collaboration functions with other developers (or yourself) and interacts directly with each local instance of Git to simplify collaboration with multiple people. 

Version Control is the notion of capturing at regular intervals along the way the changes that are made to an artifact (in our case, code) so that a history is tracked and relationships between various pieces of code can be described. As the complexity increases with new features, bug fixes, removed features, etc, Version control allows us keep track of where changes were introduced in case we need to track them down later. GitHub helps with version control by acting as a storage location for repositories of code and capturing information about your work each time you check it in (or commit). Developers use version control to keep track of their work in case they need to go back to it, but also use it to help in collaboration with other developers .

 

A commit is simply a snapshot of your code at a given instance, like saving a text file, but with a unique identifier (typically a SHA1 hash) and information about the history of the code ie the parent commits. Commits should have a message that describes what was changed or the delta from the last commit, along with information about the author of the code and the person who committed it/ 

# 1.4 Forking and Cloning Reflection

