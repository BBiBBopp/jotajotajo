$(function(){	
	addDate();
	// 영화 클릭하면 상영 극장 띄우기
	$('.movie-list').click(function(){
		// 영화 이름 뽑기
		$mName = $(this).children().eq(1).text();
		$.ajax({
		    url: "selectTh.ti",
		    data: {mName: $mName},
		    type: "get",
		    success: function (list) {
		      var tlist = list;
		      $('.theater-location-wrapper').empty();
		      $.each(tlist, function(index, item){
		    	  $('.theater-location-wrapper').append('<button class="theater-location">' + item.theaterName + '(' + item.theaterNum + ')');
		      })
		    }
		  });
	})
	
	// 지역 클릭하면 해당 지역 극장 띄우기
	 $(document).on("click",".theater-location",function(){
		// 특정 지역 받아오기
		var $tAddr = $('.theater-location').text().split(" ")[0];
        
		$.ajax({
			url: "selectPl.ti",
			data: {tAddr: $tAddr,
				   mName: $mName},
			type: "get",
			success: function(list){
				var tlist = list;
				
				$.each(tlist, function(index, item){
					$('.theater-place-wrapper').append('<button class="theater-place">'+ item +'</button>');
				})
			}
		})
     })
})


const date = new Date(); // 오늘 날짜 받아오기
var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0); // 이번달 마지막 날
var reserveDate = document.querySelector('.reserveDate');

const weekDay = ['일', '월', '화', '수', '목', '금', '토'];

function addDate(){
	// 이번달 전부 확인해보기
	for(i = date.getDate(); i <= lastDay.getDate(); i++){
		
		// 오늘 today[newDate(2022-01-날짜)]
		var today = weekDay[new Date(date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + i).getDay()];
		console.log(today);
		
		// day: 요일 , date: 날짜
		$('.reserve-date').append('<button class="movie-date-wrapper">'
								+ '<span class="movie-day">'+today+'</span>'
								+ '<span class="movie-date">'+i+'</span>'
								+ '</button>')
		
		// 요일에 맞는 css넣기
		if(today == '토') {
			$('.movie-day').addClass("saturday");
			$('.movie-date').addClass("saturday");
		} else if(today == '일') {
			$('.movie-day').addClass("sunday");
			$('.movie-date').addClass("sunday");
		}
		
		
	}
}


