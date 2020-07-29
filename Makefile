MAIN = main.py
INPUT_DIR = inputs
OUTPUT_DIR = outputs

# Try "make ex1" to test just one input file.

all: sample ex1 ex2 ex3 ex4

default: all

clean:
	rm $(OUTPUT_DIR)/* 


sample:
	python $(MAIN) $(INPUT_DIR)/sample.txt $(OUTPUT_DIR)/out.sample.txt
ex1:
	python $(MAIN) $(INPUT_DIR)/ex1.txt $(OUTPUT_DIR)/out.ex1.txt
ex2:
	python $(MAIN) $(INPUT_DIR)/ex2.txt $(OUTPUT_DIR)/out.ex2.txt
ex3:
	python $(MAIN) $(INPUT_DIR)/ex3.txt $(OUTPUT_DIR)/out.ex3.txt
ex4:
	python $(MAIN) $(INPUT_DIR)/ex4.txt $(OUTPUT_DIR)/out.ex4.txt
