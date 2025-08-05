<h1 align="center"><img src="icons/lock.png" width="80" align="absmiddle">Add Password - блокировка Linux приложения паролем</h1>
<div align="center">
  <img src="icons/sh.png" width="50" alt="Bash version">
  <img src="icons/linux.png" width="50" alt="Platform Linux">
</div>

## <img src="icons/layers.png" width="30" align="absmiddle"> Описание
Скрипт запрашивает пароль через графический интерфейс и проверяет его соответствие хешу SHA-256 перед выполнением основной программы.

## <img src="icons/box.png" width="30" align="absmiddle"> Зависимости
- `zenity` - для графического интерфейса
- `notify-send` - для уведомлений (обычно входит в состав libnotify)
- Bash 4.0+

## <img src="icons/sett.png" width="30" align="absmiddle"> Использование
1. Замените `Ваш_Хешированный_пароль` на SHA-256 хеш вашего пароля:
```bash
echo -n "ваш_пароль" | sha256sum | awk '{print $1}'
```
2. Вставьте полученный хеш в переменную:
```
PASS_HASH="полученный_хеш"
```
## <img src="icons/run.png" width="30" align="absmiddle"> Использование
> [!WARNING]
> - Не используйте простые пароли
> - Храните исходный код в безопасном месте

1. Добавьте ваш код после блока проверки пароля
2. Установите права на выполнение:
```bash
chmod +x script.sh
```
3. Запустите скрипт:
```bash
./password.sh
```

