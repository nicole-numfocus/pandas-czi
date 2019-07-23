proposal.pdf: proposal.md
	pandoc --filter=pandoc-citeproc proposal.md -o proposal.pdf
