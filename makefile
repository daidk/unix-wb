all: README.md

README.md: guessinggame.sh
	touch README.md
	printf "The title of the program is: Guessing Game \n" > README.md
	printf "The date and time at which make was run: " >> README.md
	date >> README.md
	printf "\n" >> README.md
	printf "The number of lines of code contained in is: " >> README.md
	cat guessinggame.sh | wc -l | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md