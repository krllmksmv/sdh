# sdh
Service Desk Helper

Плагин для Chrome, расширяющий функциональность вебсервиса Service Desk

http://76.isdemo.intraservice.ru/
login:  admin
password: y43da

Фича 1

Если в элементе "input" свойство "value" это валидная ссылка, добавлять справа к элементу элемент "a" с этой ссылкой и текстом ">>>"

Архитектура:
1. Срабатывание на страницах http://servicedesk.gradient.ru/Task/* и http://76.isdemo.intraservice.ru/Task/*
2. В content.js искать нужный элемент и добавлять ссылку
