all:
	for file in *.md; do bochar $$file;  done

0-test.html: 0-test.md
	bochar 0-test.md
