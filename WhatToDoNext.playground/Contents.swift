import UIKit

/*
 
 * 세이브/로드 기능 구현하기. Codable을 활용하게 될 것이다.
 
 * 타이핑을 멈췄을 때나 키보드 밖을 터치했을 때, 키보드 내려가게 하기
 
 * Room Type을 선택하고 위쪽에 Done을 누르면 다시 돌아가게끔 하기 - 이건 굳이 필요없을 수도 있다
 
 * 이미 입력되어 registration 테이블에 들어가 있는 예약을 삭제할 수 있는 기능 - emojidictionary에서 배웠던 대로
 
 * registration 테이블에서 셀을 누르면 예약에 관한 상세 정보가 뜨게 하기
 
 * 필요한 필드를 다 채우지 않으면 add registration의 done이 표시되지 않게 하기
 
 * 직원의 입력에 따라 요금의 합을 보여주는 섹션을 add registration에 만들기 (번외로 내 생각에, 이 요금 정보를 registration 테이블에 표시하면 좋을듯)
 
 */
