source utils.sh

function loopArrayWithoutIndex(){

	aExp=`arrayExpr $1`

	for var in `eval $aExp`
	do
		echo "${var}"
    		# do something on $var
    	done
}

function loopCharArrayWithIndex(){
	for (( x=0 ; x<${#1} ; x++ )); do
	    ch=`getChar $1 $x`
	    echo "["$x"] : "$ch
	done
}
