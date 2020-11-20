all:
	for file in *.md; do cleaver $$file;  done

index.html:  index.md
	cleaver  index.md

0-test.html: 0-test.md
	cleaver  0-test.md

1-intro.html: 1-intro.md
	cleaver   1-intro.md

2-data.html: 2-data.md
	cleaver  2-data.md

3-flow.html: 3-flow.md
	cleaver  3-flow.md

4-text.html: 4-text.md
	cleaver  4-text.md

watch:
	cleaver watch 3-flow.md
