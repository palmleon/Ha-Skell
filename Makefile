scanner = "`cygpath -w "$(JFLEX)"`"

all: clean scanner parser

	javac *.java

scanner: 
	# jflex scanner.jflex -- to be inserted in the final version
	exec java -jar $(scanner) src/scanner.jflex
	mv src/Scanner.java .
	
parser:
	java java_cup.MainDrawTree -parser Parser src/parser.cup
	
clean:
	rm -fr parser.java scanner.java sym.java
	rm -vfr *.class
	rm -vfr *.*~
	
build:
	java Main $(FILE).hs $(FILE).ll
	
run: build
	lli $(FILE).ll 
	

