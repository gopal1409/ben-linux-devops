##we will create our make file
  355  vim Makefile
  356  make
  357  cat Makefile
  say_hello:
        echo "hello World"

###if you look into the make file
###the say_hello behave like function name in any programming language. or sometime is is called as target
the command echo helloworld is the recipe against your make file. 

target: prerequistits
press tab and provide recipe
###but to supress the actual command which we dont want to show start with @ symbol
say_hello:
        @echo "hello World"
##3lets add few more things inside make file like i want to generate a file and do clean up
all: say_hello generate clean
say_hello:
        @echo "hello World"
generate:
        @echo "creating empty file"
        touch file-{1..10}.txt
clean:
        @echo "Cleaning up those file"
        rm *.txt
