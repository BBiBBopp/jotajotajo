package com.kh.question.model.vo;

public interface QuestionMethod {
	// 타입 바꿔주기
	static String changeQType(int QtypeNo) {
		
		String QtypeTxt = "";
		
		switch(QtypeNo) {
		case 1 : QtypeTxt = "일반 문의";
				 break;
		case 2 : QtypeTxt = "불만";
				 break;
		case 3 : QtypeTxt = "칭찬";
				 break;
		case 4 : QtypeTxt = "제안";
				 break;
		}
		
		return QtypeTxt;
	}
	
	static char changeQType(String comment) {
		char OX = 'X';
		if(comment != null){
			OX = 'O';
		}
		
		return OX;
	}

}
