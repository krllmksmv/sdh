$ ->

# Поле "Задача (ссылка)"

	field = $ 'input#field1016'
	button = $ '<button form="null" class="sdhButton">></button>'
	link = 'http://76.isdemo.intraservice.ru/Task/Create?serviceid=5&typeid=1004'

	button.on 'click', ->
		if /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/.test field[0].value
			window.open field[0].value, '_blank'
		else
			if field[0].value == ''
				window.open link, '_blank'
			else
				alert 'Некорректная ссылка!'
		return

	field.parent()
		.append(button)

	return
