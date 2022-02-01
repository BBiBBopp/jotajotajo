$(function () {
  // 인원 선택하기
  $(".select-seat-ul").on("click", "li", function () {
    seatNum = $(this).text();

    // 선택된 좌석 hover 넣기
    $(".select-seat-ul").children().removeClass("select-seat-ul-active");
    $(this).addClass("select-seat-ul-active");

    if ($(this).attr("class").match("select-number-normal")) {
      $(".reserve-number").text("일반 X " + seatNum);
      var price = 11000 * seatNum;
      price = addComma(price);
      $(".ticket-price").text(price + "원");
    } else if ($(this).attr("class").match("select-number-teen")) {
      $(".reserve-number").text("청소년 X " + seatNum);
      var price = 9000 * seatNum;
      price = addComma(price);
      $(".ticket-price").text(price + "원");
    } else {
      $(".reserve-number").text("우대 X " + seatNum);
      var price = 9000 * seatNum;
      price = addComma(price);
      $(".ticket-price").text(price + "원");
    }
  });

  $(".select-seat-wrapper").on("click", "button", function () {
    // 변수 선언 안해주면 전역변수 아닌가???????????????????

    //if (seatNum == null) {
    //  alert("인원을 먼저 선택해주세요");
    //}
    // alert("한 번 눌림");
    $(this).addClass("btn-dark");
    var selectedSeats = "";
    selectedSeats = selectedSeats + $(this).siblings().eq(-$(this).text());
    console.log(selectedSeats);
    $(".selected-seats").text($(this).text());
  });
});

// 천 단위 콤마
function addComma(value) {
  value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  return value;
}
