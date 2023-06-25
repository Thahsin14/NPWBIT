if [ "$1" = "--logs" ]; then
    if [ -n "$2" ]; then
        for ((i=1; i<=$2; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: skrypt.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done
    else
        for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Skrypt: skrypt.sh" >> log$i.txt
            echo "Data: $(date)" >> log$i.txt
        done
    fi
elif [ "$1" = "--help" ]; then
    echo "    --help - wyswietlenie opcji."
    echo "    --logs - utworzenie plików log"
    echo "    --logs [ilosc] utworzenie danej ilosci logow"
    echo "    --date - wyświetlenie dzisiejszej daty"
elif [ "$1" = "--date" ]; then
    echo "Dzisiejsza data: $(date)"
else
    echo "Nieznane. Użyj --help"
fi
