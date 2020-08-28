DATE=$(date +'%d/%m/%y')

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" >> README.md
	printf '\n' >> README.md
	printf '(\ /)<br>\n' >> README.md
	printf '( . .)<br>\n' >> README.md
	printf 'C(")(")<br><br>\n\n' >>README.md
	printf 'DATE: ' >>README.md
	date +'%d/%m/%Y<br>' >>README.md
	printf 'TIME: ' >>README.md
	date +'%H:%M:%S<br>' >>README.md
	printf 'Number of lines of code: ' >>README.md
	cat guessinggame.sh | wc -l >>README.md

clean:
	rm README.md
