#HW-13
1.
<img width="600" height="80" alt="изображение" src="https://github.com/user-attachments/assets/d69e4353-dc37-49bd-b4e8-8e60218707c9" />

1. Добавить ко всем файлам формата log timestamp в качестве названия.
Должно получиться filename_{timestamp}.log
Для всех файлов с расширением Py добавьте в конец названия хэш
коммита.
```
#!/bin/bash

SEARCH_LOG=$(find *log)

for file in $SEARCH_LOG; do
	NAME=$(echo "$file" | cut -d'.' -f1)
	EXT=$(echo "$file" | cut -d'.' -f2)
	RENAME=$(mv "$file" "${NAME}$(date +_%F_%H:%M.)${EXT}")
done

echo -e "Файлы переименованы\n---------------\n $SEARCH_LOG"
```
<img width="665" height="232" alt="изображение" src="https://github.com/user-attachments/assets/4456f0d5-d45a-4ac1-8329-6e4945c47659" />

3. Довольно распространённая ошибка ошибка — это повтор слова.
Вот в предыдущем предложении такая допущена. Необходимо
исправить каждый такой повтор (слово, один или несколько
пробельных символов, и снова то же слово).
```
TEXT=$(cat text-error.txt  | awk '{
    for (i=1; i<=NF; i++) {
        if (!seen[$i]++) {
            printf "%s ", $i
        }
    }
    print ""
}')
echo $TEXT
```
<img width="799" height="133" alt="изображение" src="https://github.com/user-attachments/assets/abf64723-f8ca-41a3-92b5-1b82c09b6412" />

