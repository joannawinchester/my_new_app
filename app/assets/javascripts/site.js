$(document).on('ready page:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
	$('.container-slip').sliphover({
		caption: 'data_caption',
		target: 'img',
		fontColor: 'rgba(50, 50, 50, 0.9)',
		backgroundColor: 'rgba(258, 258, 258, 0.8)',
		textAlign: 'center',
		verticalMiddle: true,
	});
});