В корне папки находится файл с базой данных, который необходимо импортировать 
test-task.sql
Таблицы из базы данных я вывела на главную страницу проекта 
Объяснение решений:
1) для первой задачи я решила создать отдельную таблицу в базе данныхБ которая содержит в себе типы билетов и их id
через свзязь один ко многим, я добавила в основную таблицу строку "tickets_type_id", которая связывает заказ и тип билета.
Таким образом, если появятся новые типы билетов, можно будет добавить их в отдельную таблицу (tickets_type), получается легкая масштабируемость.
2) для решения проблемы с баркодом, я создала отдельную таблицу для баркода и таблицу связей многие ко многим, в которой заказ билета получает свой баркод. для каждого билета в заказе присваивается баркод. Из таблицы связей легко получить данные. 