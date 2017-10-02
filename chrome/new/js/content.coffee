$ -> 
	container = $ 'input#field1016'
				.parent()


	img = 'data:image/png;base64,'

	btn = $ '<button width=><img src="../img/icon.png"></button>'

	field = $ 'input#field1016'

	console.log field

	btn.on 'click', ->
		window.open field[0].value if /^http(s?):\/\//.test(field[0].value)
		return

	container.append(btn)
	return
