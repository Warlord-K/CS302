LAB=Lab2
export LAB

save:
	@git add .; \
	git commit --quiet -m "$$message"; \
	git push --quiet

run:
	@g++ $$LAB/$$q.cpp -o $$LAB/$$q; \
	./$$LAB/$$q
	@export message="$$LAB: $$q" ; \
	echo "\n\nSaving...\n\n"; \
	make save