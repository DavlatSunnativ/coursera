if [ $# -ne 2 ]; then
    echo "Ошибка: требуется 2 аргумента (файл и строка)"
    exit 1
fi

writefile=$1
writestr=$2

dirname=$(dirname "$writefile")
mkdir -p "$dirname"

echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Ошибка: не удалось создать файл $writefile"
    exit 1
fi

exit 0
