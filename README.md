# sdh
Service Desk Helper

Плагин для Chrome, расширяющий функциональность вебсервиса Service Desk

Демо:
http://76.isdemo.intraservice.ru/Task/
login:  admin
password: y43da

Продакшн:
http://servicedesk.gradient.ru/Task/

Фича 1

Кнопка, расширяющая функционал поля "Задача (ссылка)" в заявке "Служба поддержки ИТ/УКО (обращение)"

Функционал

1. Если поле содержит валидную ссылку, нажатие на кнопку открывает ссылку в новом окне
2. Если поле пустое, в новом окне открывается ссылка создания новой задачи

Требования

Как определить поле:
1. В демо "input[id=field1016]"
2. В продакшн "input[id=field1105]"

Какой дложна быть кнопка:
1. Надписи нет
2. Пиктограмма icons\sdh.png
3. Квадратная, размер соответсвует полю

Ссылка для создания задачи:
1. В демо http://76.isdemo.intraservice.ru/Task/Create?serviceid=5&typeid=1004
2. В продакшн http://servicedesk.gradient.ru/Task/Create?serviceid=10&typeid=15

Реализация
1. Срабатывание на страницах http://servicedesk.gradient.ru/Task/* и http://76.isdemo.intraservice.ru/Task/*
2. В content.js искать нужный элемент и добавлять кнопку
