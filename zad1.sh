if [ "$1" = "--logs" ]|[ "$1" = "-l" ]; then
    if [ -n "$2" ]; then
        for ((i=1; i<=$2; i++)); do
            mkdir log$i
            echo "Nazwa pliku: log$i.txt" > log$i/log$i.txt
            echo "Skrypt: zad1.sh" >> log$i/log$i.txt
            echo "Data: $(date)" >> log$i/log$i.txt
        done
    else
        for ((i=1; i<=100; i++)); do
            mkdir log$i
            echo "Nazwa pliku: log$i.txt" > log$i/log$i.txt
            echo "Skrypt: zad1.sh" >> log$i/log$i.txt
            echo "Data: $(date)" >> log$i/log$i.txt
        done
    fi
elif [ "$1" = "--error"]|[ "$1" = "-e" ]; then
    if [ -n "$2" ]; then
        for ((i=1; i<=$2; i++)); do
            mkdir error$i
            echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
            echo "Skrypt: zad1.sh" >> error$i/error$1.txt
            echo "Data: $(date)" >> error$i/error$1.txt
        done
    else
        for ((i=1; i<=100; i++)); do
            mkdir error$i
            echo "Nazwa pliku: error$i.txt" > error$i/error$1.txt
            echo "Skrypt: zad1.sh" >> error$i/error$1.txt
            echo "Data: $(date)" >> error$i/error$1.txt
        done
    fi
elif [ "$1" = "--init" ]; then
    git clone https://github.com/Thahsin14/NPWBIT

elif [ "$1" = "--help" ]|[ "$1" = "-h" ]; then
    echo "    -h --help - wyswietlenie opcji."
    echo "    -l --logs - utworzenie 100 plików log"
    echo "    -l --logs [ilosc] utworzenie danej ilosci logow"
    echo "    -d --date - wyświetlenie dzisiejszej daty"
elif [ "$1" = "--date" ]|[ "$1" = "-d" ]; then
    echo "Dzisiejsza data: $(date)"
else
    echo "Nieznane. Użyj --help"
fi
