# Моё портфолио

Это статический сайт, сгенерированный при помощи [hugo][hugo] (это генератор статических сайтов, который используя какую-то определенную тему и контент, описанный в формате markdown).

Использована тема: <https://github.com/StaticMania/portio-hugo>

## Что необходимо для локального запуска сайта

> Описанные ниже команды необходимо выполнять в ОС Linux. Перед тем, как продолжить - нужно убедиться что SSH ключ компьютера добавлен в профиль на github. Для этого нужно открыть [эту ссылку](https://github.com/settings/keys) и при необходимости выполнить действия, что описаны там

В первую очередь необходимо получить содержимое данного репозитория к себе на компьютер. Для этого открываем терминал (`ctrl + alt + t`), вставляем в него следующую команду:

```bash
git clone git@github.com:Annsh21/portfolio.git
```

И нажимаем клавишу `Enter`. В текущей директории (домашнем каталоге) будет создана директория с именем `portfolio`, в которой содержится всё что есть в данном репозитории.

> Описанную выше команду нужно выполнять только в том случае, если ранее это сделано не было (если директория `portfolio` уже существует - её выполнять не нужно)

После этого переходим в эту директорию (в том же терминале выполняем команду `cd ./portfolio`) и выполняем следующую команду:

```bash
make start
```

> Для этого необходимо, чтоб был локально [установлен docker][docker_install] (это приложение для запуска контейнеризированных приложений, с его помощью происходит запуск `hugo`)

После этого можно открыть в браузере <http://127.0.0.1:1313/>. Теперь можно изменять настройки сайта, темы, контента и пр. - сайт в открытой вкладке браузера будет обновляться автоматически.

## Как обновить сайт на домене

После того как все изменения будут проверены локально - необходимо их "залить" в этот репозиторий (после "заливки" сайт на домене будет обновлён, для этого используется соответствующий [action](.github/workflows/publish.yml)). Для этого в том же терминале (находясь в его директории) выполняем следующие команды (по очереди, одна строка - это одна команда):

```bash
git add .
git commit -m 'Site update'
git push
```

> Первая команда "запоминает" все сделанные изменения, вторая - их "записывает" локально, третья - отправляет все записанные изменения в этот репозиторий (на github)

[hugo]:https://gohugo.io/
[docker_install]:https://docs.docker.com/engine/install/ubuntu/
