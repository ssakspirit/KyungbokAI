# 구역 초기화용 저장본(e4/e5/e6/e7)을 새 출발점 상태로 다시 저장
# startline_build 실행 후 결과를 확인하고 나서 실행할 것 (저장이 끝나면 티킹 영역 해제)
tickingarea add -6 0 -1051 126 100 -927 kb_startline
structure save mystructure:e4 -8 60 -1046 55 79 -983 false disk true
structure save mystructure:e5 -8 60 -982 55 79 -919 false disk true
structure save mystructure:e6 56 60 -1046 119 99 -983 false disk true
structure save mystructure:e7 56 58 -982 119 97 -919 false disk true
say 구역 저장본 e4 e5 e6 e7 갱신 완료
tickingarea remove kb_startline
