function initUIStandardApp() {
    $('#dock').Fisheye(
				{
				    maxWidth: 50,
				    items: 'a',
				    itemsText: 'span',
				    container: '.dock-container',
				    itemWidth: 40,
				    proximity: 90,
				    halign: 'center'
				}
			)
    $('#dock2').Fisheye(
				{
				    maxWidth: 60,
				    items: 'a',
				    itemsText: 'span',
				    container: '.dock-container2',
				    itemWidth: 40,
				    proximity: 80,
				    alignment: 'left',
				    valign: 'bottom',
				    halign: 'center'
				}
			)
} //End function initUIStandardApp
