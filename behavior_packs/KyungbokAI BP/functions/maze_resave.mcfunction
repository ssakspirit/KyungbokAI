# 미로 저장본 갱신: 미로마다 구조 블록이 불러오는 mystructure:mz01~16 과 좌우 절반 구역 저장본 f2/f3
# maze_build 결과를 확인한 뒤 실행

tickingarea add 149 0 -898 245 100 -778 kb_maze
structure save mystructure:mz01 151 63 -896 165 65 -881 false disk true
structure save mystructure:mz02 151 63 -876 165 65 -861 false disk true
structure save mystructure:mz03 151 63 -856 165 65 -841 false disk true
structure save mystructure:mz04 151 63 -836 165 65 -821 false disk true
structure save mystructure:mz05 151 63 -815 165 65 -800 false disk true
structure save mystructure:mz06 151 63 -794 165 65 -779 false disk true
structure save mystructure:mz07 170 63 -830 184 65 -815 false disk true
structure save mystructure:mz08 170 63 -808 184 65 -793 false disk true
structure save mystructure:mz09 210 63 -829 224 65 -814 false disk true
structure save mystructure:mz10 210 63 -808 224 65 -793 false disk true
structure save mystructure:mz11 230 63 -896 244 65 -881 false disk true
structure save mystructure:mz12 230 63 -876 244 65 -861 false disk true
structure save mystructure:mz13 230 63 -856 244 65 -841 false disk true
structure save mystructure:mz14 230 63 -836 244 65 -821 false disk true
structure save mystructure:mz15 230 63 -815 244 65 -800 false disk true
structure save mystructure:mz16 230 63 -794 244 65 -779 false disk true
structure save mystructure:f2 150 63 -837 202 65 -774 false disk true
structure save mystructure:f3 203 63 -837 255 65 -774 false disk true
say 미로 저장본 mz01~mz16, f2, f3 갱신 완료
tickingarea remove kb_maze
