all:
	for file in *.md; do cleaver $$file;  done

0-test.html: 0-test.md
	cleaver  0-test.md

2-data.html: 2-data.md
	cleaver  2-data.md

3-flow.html: 3-flow.md
	cleaver  3-flow.md

watch:
	cleaver watch 3-flow.md
