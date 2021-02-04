all: README.md

README.md: guessinggame.sh
	touch README.md
	num_lines=$(cat guessinggame.sh | wc -l)
	echo "The title of the program is: Guessing Game - Bash, Make, Git, and GitHub" > README.md
	echo "The date and time at which make was run:" >> README.md
	date >> README.MD
	echo "The number of lines of code contained in guessinggam is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md