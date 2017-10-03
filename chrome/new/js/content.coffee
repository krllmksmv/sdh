$ -> 

	btn = $ '<button form="null" id="sdhButton"><img src="'+chrome.runtime.getURL("img/icon16.png")+'" alt="">Перейти</button>'

	defaultLink = 'http://76.isdemo.intraservice.ru/Task/Create?serviceid=5&typeid=1004'

	field = $ 'input#field1016'


	btn.on 'click', ->
		if /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/.test field[0].value
			window.open field[0].value, '_blank'
		else
			if field[0].value == ''
				window.open defaultLink, '_blank'
			else
				console.log 'here'
				alert 'Некорректная ссылка!'
		return

	field.parent()
		.append(btn)

	$ 'input#field1016'
		.on 'change', -> 
			if /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/.test field[0].value || field.value == ''
				($ 'button#sdhButton')[0]
					.innerHTML = '<img src="'+chrome.runtime.getURL("img/icon16.png")+'" alt="">Перейти'
			else
				if field[0].value != ''
					($ 'button#sdhButton')[0]
						.innerHTML = '<img src="'+chrome.runtime.getURL("img/icon16.png")+'" alt="">Ошибка'
				else
					($ 'button#sdhButton')[0]
					.innerHTML = '<img src="'+chrome.runtime.getURL("img/icon16.png")+'" alt="">Перейти'
			return					

	return

