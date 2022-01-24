// const 사용 이유? 불변값
const date = new Date(); // 오늘 날짜
const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0); // 이번달 마지막 날
// console.log(lastDay);
// querySelector 사용 이유? class요소 중 하나만 선택하기 위해서
const reserveDate = document.querySelector(".reserve-date"); // 예매할 날짜
const theaterPlace = document.querySelectorAll(".theater-place"); // 예매할 지역(도)
const reserveTimeWant = document.querySelectorAll(".reserve-time-want"); // 예매할 시간
const inputTitle = document.querySelector(".title"); // 영화 제목
const inputSelectedTheater = document.querySelector(".selectedTheater"); // 예매할 영화관
const inputReserveDate = document.querySelector(".reserveDate"); //
const inputRunningTime = document.querySelector(".runningTime"); // 러닝타임
const moveSeatForm = document.querySelector(".moveSeatForm"); //
const moveSeatButton = document.querySelector(".moveSeatButton");
const movieAge = document.querySelector(".movieAge"); // 연령

let movieListAge = "";
let year = 0;
let month = 0;
add();
// 문서가 실행되자마자 데이터 받아와서 뿌려주기
document.addEventListener("DOMContentLoaded", () => {
  add();
  addDate();
});

// 데이터 가져오기
function add() {
  $.ajax({
    url: "selectMo.ti",
    type: "get",
    success: function (list) {
      mList = setData(list);
      console.log(mList);
    },
  });
}
