%.json : %.jsonnet common/*.jsonnet
	jsonnet $< -o generated/$@
