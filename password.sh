PASS_HASH="Ваш_Хешированный_пароль"

if [ "$YA_BROWSER_AUTH" != "1" ]; then
    while true; do
        INPUT=$(zenity --password --title="Доступ к App..." 2>/dev/null)
        if [ $? -ne 0 ]; then
            exit 0
        fi
        if [ "$(echo -n "$INPUT" | sha256sum | awk '{print $1}')" = "$PASS_HASH" ]; then
            notify-send "Доступ разрешён" "Пароль верный. Запуск..." -i dialog-password
            YA_BROWSER_AUTH=1 exec "$0" "$@"
            exit 0
        else
            zenity --error --text="Неверный пароль! Попробуйте снова." --timeout=2
        fi
    done
fi
