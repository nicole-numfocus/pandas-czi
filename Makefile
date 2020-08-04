proposal.pdf: proposal.md
	pandoc --filter=pandoc-citeproc proposal.md -o proposal.pdf

budget.pdf: budget.md
	pandoc --filter=pandoc-citeproc $< -o $@
