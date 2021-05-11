.PHONY: all clean

all : $(patsubst %.jsonnet, generated/%.json, $(wildcard *.jsonnet))

clean:
	rm generated/*.json

generated/%.json : %.jsonnet common/*.jsonnet
	jsonnet $< -o $@
