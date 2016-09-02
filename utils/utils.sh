############Utils function starts here############

function necho(){
	echo
	echo $@
}

function nechon(){
	echo
	echo $@
	echo
}

function echon(){
	echo $@
	echo
}

function getUserInput(){
	read userInput
	echo $userInput
}

function checkCharInString(){
	case $(@:2) in
	     *$1*) echo "true";;
	     *)	  echo "false";;
	esac		
}

function getUniqueChars(){
	echo $@ | tr -s 'a-z'
}

function getChar(){
	str=$1
	userIndex=$2
	index=$((userIndex+1))
	echo $(expr substr $str $index 1)
}

function arrayExpr(){
	echo "echo $1 | fold -w1"
}
############Utils function ends here############
