* How does tracking and adding changes make developers lives easier?
	Tracking and adding changes gives an additional layer of you control on which of the things your currently working on are ready to be 'saved'. Tracking of changes by git, which you can pull up with git status gives you an easy way to see what has been modified since you last saved, and add lets you flag which of the modified files you'd like to include in the next commit

* What is a commit?
	A commit is a save point of the project you're working on, a snapshot of any changes that have been made since the last version. 

* What are the best practices for commit messages?
	Single line for the header (like an e-mail subject). Line space before any additional message content and a paragaraph that's <72 columns wide. Use the imperative "add" rather than "added"


* What does the Head^ argument mean?
	Head^ refers to the parent of the commit you're on currently.

* What are the 3 stages of a git change and how do you move a file from one stage to the other?
	The 3 stages of a git change are :
	1. Working Area
	2. Staging Area
	3. Repository

	Files are pulled down from the repository into the working area (3->1) with checkout. Working area to Staging area (1->2) is done by the add command. Staging Area back to the Repository (2->3) is done with commit -m "message"

* Write a handy cheatsheet of the commands you need to commit your changes?
	1. git status
	2. git add filename(s)
	3. git commit -m "message"

* What is a pull request and how do you create and merge one?
	A pull request is the signal and process to merge the changes you've made to your branch back into the upstream branch. You create a pull request through the github site by browsing to the branch of interest, selecting the appropriate base and head branches and and clicking the "create pull request" button. Merging is accomplished by browsing to the pull request and clicking the "confirm merge" button.

* Why are pull requests preferred when working with teams?
	Pull requests are useful when working with a team because they give an opportunity for the team to review and comment on the commit to be merged back to the parent branch. 