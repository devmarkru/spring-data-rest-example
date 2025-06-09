# spring-data-rest-example
Пример использования **Spring Data Rest** на **Kotlin**. В качестве СУБД в проекте подключена **H2**, которая не требует установки и инициализируется при старте приложения. Но при необходимости вы можете легко поменять настройки подключения без правок в коде.

Sql-скрипты для инициализации БД лежат в папке `src/main/resources` в файлах `schema.sql` и `data.sql`, которые автоматически выполняются каждый раз при старте приложения.

## Как развернуть проект на сервере
Данный проект содержит `Dockerfile` и его можно легко развернуть в облачном хостинге по технологии **Push-to-Deploy**.

### Полезные ссылки
* [Spring Data Rest с примерами на kotlin](https://devmark.ru/article/spring-data-rest-kotlin).
* [Как быстро развернуть Spring Boot в облаке](https://devmark.ru/article/spring-push-to-deploy)
* [dockhost.ru](https://dockhost.ru/?utm_source=devmark&utm_medium=cpa&utm_campaign=devmark&p=z8i9gexg) - облачный хостинг по технологии **Push-to-Deploy**.
* [Новости проекта](https://t.me/+RjrPWNUEwf8wZTMy) и короткие заметки.
* Ещё больше статей по разработке ПО вы можете найти на моём сайте [devmark.ru](https://devmark.ru/).
