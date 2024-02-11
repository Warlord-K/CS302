LAB=Lab4
export LAB

save:
	@read -p "Commit Message: " message; \
	git add .; \
	git commit --quiet -m "$$message"; \
	git push --quiet --force

runs:
	@g++ $$LAB/$$q.cpp -o $$LAB/$$q; \
	./$$LAB/$$q
	@export message="$$LAB: $$q" ; \
	make save

run:
	@g++ $$LAB/$$q.cpp -o $$LAB/$$q; \
	./$$LAB/$$q

lx:
	@read -p "Question Number: " q; \
	lex $$LAB/q$$q.l; \
	yacc -d $$LAB/q$$q.y; \
	cc lex.yy.c -o $$LAB/q$$q y.tab.c -ll; \
	./$$LAB/q$$q < input.txt > output.txt

lex:
	@read -p "Question Number: " q; \
	lex $$LAB/q$$q.l; \
	cc lex.yy.c -o $$LAB/q$$q -ll; \
	./$$LAB/q$$q < input.txt