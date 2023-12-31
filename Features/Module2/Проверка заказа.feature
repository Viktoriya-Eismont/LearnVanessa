﻿#language: ru

@tree

Функционал: проверка документа заказ

Как менеджер по продажам я хочу
создавать документ Заказ
чтобы продавать товары   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание документа Заказ
* Открыть создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
* Заполнить шапку документа
	И заполнение шапки документа Заказ от ООО Все для дома
* Заполнить табличную часть документа
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '5 000,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И в таблице "Товары" я завершаю редактирование строки
* Сохранить документ
	И я нажимаю на кнопку с именем 'ФормаЗаписать'	
* Проверка Количества и Суммы
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '3'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '10 200'



