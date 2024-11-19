add() {
	echo $((${1} + ${2}))
}

subtract() {
	echo $((${1} - ${2}))
}

multiply() {
	echo $((${1} * ${2}))
}

divide() {
	echo $((${1} / ${2}))
}

echo 'first number'
read num1
echo 'second number'
read num2
echo 'operation (+, -, *, /)'
read operation
case $operation in
	"+") result=$(add $num1 $num2);;
	"-") result=$(subtract $num1 $num2);;
	"*") result=$(multiply $num1 $num2);;
	"/") result=$(divide $num1 $num2);;
	*) echo "unknown operation"; exit 1;;
esac
echo $result

