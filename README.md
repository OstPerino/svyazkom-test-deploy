## Данный репозиторий предназначен для локального запуска тестового задания в "Связьком".

### Для запуска приложения был написан makefile, команды из которого помогут вам задеплоить проект.

### Важные ремарки: 
- В обоих репозиториях .env файлы не пушатся, но .env.example файлах находятся примеры, с правильными значениями переменных окружения для простого деплоя текущим репозиторием.
- 8000, 5432, 3000 - порты должны быть свободны
- Для запуска должны быть установлены docker и docker-compose (в случае ограничения прав придется в makefile дописать sudo и вводить пароль от компа).

### Makefile команды:
- make deploy - команда для пула клиента и серверного репозитория, также запускает докер контейнеры
- make client - команда для пула клиентского приложения
- make server - команда для пула серверного приложения
- make clean - команда для удаления клиентского и серверного репозитория
- make down - команда для удаления докер контейнеров (также удалит images, networks, volumes).
- make migrates - команда для запуска миграций в laravel

### Порядок для запуска проекта:
- make deploy
- make migrates

После данных команд приложения развернуться, для демонстрации можно зайти на 3000 порт в браузере (клиентское приложение).