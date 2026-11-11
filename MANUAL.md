# KyungbokAI 개발 매뉴얼

> 제작: stevecoding  
> 최종 수정: 2026-11-12 (수업 자료: 보안 미로 설계 대작전 슬라이드 추가)

---

## 수업 자료

| 자료 | 링크 | 내용 |
|------|------|------|
| 보안 미로 설계 대작전 (수업 슬라이드) | https://claude.ai/artifact/YXmDKR19nRABQju5vg6JvJ | 근정전 보안 미로를 AI 에이전트가 우수법(오른손 법칙)으로 통과하는 블록 코드 설명. 15장: 보안담당관의 부탁 → 오른손 법칙의 원리 → 판단 순서(오른쪽 → 앞 → 왼쪽으로 돌기) → 블록 코드 한 줄씩 읽기 → 실제 14번 미로 경로와 자동 재생 애니메이션 → 도전 과제 |

- 슬라이드의 블록 코드: 채팅명령어 `1`을 입력하면, 오른쪽이 비었으면 오른쪽으로 돌고 1칸 / 아니고 앞이 비었으면 앞으로 1칸 / 아니면 왼쪽으로 회전한 뒤, 채팅명령어 `1`을 다시 실행해 반복 (출구에 도착해도 스스로 멈추지 않음)
- 수업 흐름: 슬라이드 설명 → `/function maze`로 학생들을 무작위 미로 입구에 배치 → 각자 에이전트를 불러 채팅에 `1` 입력

---

## 함수 명령어 목록

게임 내에서 `/function <이름>` 으로 실행합니다.

> 함수 작성 규칙 (Education Edition에서 실제로 확인됨): 함수 파일 이름은 영문만 (한글 이름은 로드 안 됨). `say` 문구를 `[`로 시작하지 않기. 점수판 가짜 플레이어 이름에 `#`를 쓰지 않기 (`execute if score #이름` 이 파싱 실패). 함수 파일에 오류가 한 줄이라도 있으면 그 함수 전체가 없는 명령이 되며, 원인은 `LocalState\logs\ContentLog*.txt`의 `[Commands]` 경고에 나옴.

| 명령어 | 실행 방법 | 기능 |
|--------|-----------|------|
| `info` | `/function info` | 월드 소개 메시지를 전체 채팅에 출력 |
| `numberblocks` | `/function numberblocks` | 숫자 블록 1~15를 실행한 플레이어에게 지급 |
| `open_codebuilder` | `/function open_codebuilder` | 실행한 플레이어에게 코드빌더(AI 확장 튜토리얼) 오픈 |
| `specialblocks` | `/function specialblocks` | 특수 문자 블록 14종(방향 4, 기호 4, 알파벳 A-F)을 실행한 플레이어에게 지급 |
| `setnpc` | `/function setnpc` | 월드 내 모든 NPC에 다이얼로그 일괄 연결 (`코드호출기`, `수문장`, `훈련교관`) |
| `startline_build` | `/function startline_build` | 경회루 출발점 10개를 15개로 재배치 (기존 서쪽 10개 제거, 북쪽·남쪽 담장 철거 + 바닥 정리, 물 경계 andesite 줄, 새 출발점 배치). 여러 번 실행해도 결과 동일. 공사 범위를 티킹 영역 `kb_startline`으로 등록하고, 끝에 "[확인 필요]" 메시지가 나오면 몇 초 뒤 한 번 더 실행 |
| `parkour` | `/function parkour` | 접속한 플레이어 N명을 출발점에 배치하고 각자에게 번호를 채팅으로 알려 줌. 3번 기준 양옆 순서(3,4,2,5,1,6,15,7,14,8,13,9,12,10,11)로 앞 N자리를 쓰고 자리 배정은 무작위 (예: 5명→1~5번, 7명→1~6번+15번). 실행한 사람은 제외·이동 안 함. 최대 15명 (넘으면 진행자에게 미배치 명단 표시) |
| `maze_build` | `/function maze_build` | 근정전 앞 미로 16개 배치 (기존 10개를 서로 다른 모양·색으로 교체 + 근정전 양옆 6개 추가). 여러 번 실행해도 결과 동일. "확인 필요" 메시지가 나오면 몇 초 뒤 한 번 더 |
| `maze_resave` | `/function maze_resave` | 미로별 저장본 `mystructure:mz01~16`(각 미로 구조 블록이 불러옴)과 구역 저장본 f2/f3 갱신 (`maze_build` 결과 확인 후 실행) |
| `maze` | `/function maze` | 접속한 플레이어를 16개 미로 중 무작위 미로 입구에 한 명씩 배치하고 번호를 채팅으로 알려 줌. 실행한 사람은 제외·이동 안 함. 최대 16명 |
| `startline_resave` | `/function startline_resave` | 구역 초기화 저장본 e4/e5/e6/e7을 현재 상태로 다시 저장 (`startline_build` 결과 확인 후 실행). 끝에서 티킹 영역 `kb_startline` 해제 |

---

## 경회루 출발점 (15개)

| 번호 | 위치 (숫자 블록 좌표) | 진행 방향 | 칠판 문구 |
|------|----------------------|-----------|-----------|
| 1~5 | 서쪽 둑 x=-5, z = -1034, -1012, -990, -968, -946 (북→남) | 동쪽 (`arrow_right`) | `tp @initiator ~5 ~ ~` / `~-5 ~ ~` |
| 6~10 | 남쪽 담장 자리 z=-928, x = 24, 48, 72, 96, 118 (서→동) | 북쪽 (`arrow_up`) | `tp @initiator ~ ~ ~-5` / `~ ~ ~5` |
| 11~15 | 북쪽 담장 자리 z=-1050, x = 108, 84, 58, 36, 12 (동→서) | 남쪽 (`arrow_down`) | `tp @initiator ~ ~ ~5` / `~ ~ ~-5` |

- 번호는 연못을 한 바퀴 도는 순서 (15번 옆이 1번). 남쪽·북쪽 출발점은 x를 10칸 이상 엇갈리게 배치해 레인이 정면으로 마주치지 않음
- 파쿠르 서는 위치(숫자 블록 y=64 기준 연못 쪽 2칸): 서쪽 x=-3 / 남쪽 z=-930 / 북쪽 z=-1048

- 출발점 1개 = 숫자 블록(아래 deny) + 칠판 2칸(아래 polished_andesite) + 뒤쪽 cut_sandstone + 연못 가장자리 화살표 블록
- 출발점 구조물: `behavior_packs/KyungbokAI BP/structures/kyungbokai/start_01~15.mcstructure` (`/structure load kyungbokai:start_NN ...`)
- 북쪽 담장: x -6 ~ 126 전부 철거 (북서 모서리 낮은 난간 포함). 문(x 64~70), 북쪽으로 뻗는 옆담(x=-2), 동쪽 담(x=127)은 유지
- 남쪽 담장: x -6 ~ 126 전부 철거 (남서 모서리 낮은 난간 포함). 동쪽 담(x=127)은 유지
- 바닥: 서쪽 출발선과 같게 잔디 4칸(y63, 아래 흙) + 연못 쪽 돌 테두리. 북쪽 z -1050 ~ -1047 / 남쪽 z -931 ~ -928. 구조 블록 e6(55 63 -1047)은 그대로 둠
- **물 경계 줄 (2026-11-11 제작자 직접 수정)**: 북쪽 z=-1045, 남쪽 z=-933, x 1~122, y62(수면 높이)에 polished_andesite 한 줄. 서쪽 원래 출발선의 x=0 줄과 같은 방식. `startline_build`에 포함되어 다시 지어도 유지됨

---

## 근정전 미로 (16개)

| 번호 | 위치 (미로 북서쪽 모서리 x, z) | 블록 (유약 테라코타) |
|------|-------------------------------|----------------------|
| 1~3 (새로 추가) | 근정전 왼쪽 x=151, z = -896, -876, -856 | 빨강, 주황, 노랑 |
| 4~6 | 왼쪽 바깥 열 x=151, z = -836, -815, -794 | 연두, 초록, 청록 |
| 7~8 | 왼쪽 안쪽 열 x=170, z = -830, -808 | 하늘, 파랑 |
| 9~10 | 오른쪽 안쪽 열 x=210, z = -829, -808 | 보라, 자홍 |
| 11~13 (새로 추가) | 근정전 오른쪽 x=230, z = -896, -876, -856 | 분홍, 흰색, 회백색(silver) |
| 14~16 | 오른쪽 바깥 열 x=230, z = -836, -815, -794 | 회색, 갈색, 검정 |

- 미로 1개 = 15×16칸, 벽 높이 2칸(y64~65), 바닥 조약돌(y63). 입구는 남동쪽 (x+13, z+15, 바닥 `arrow_up`), 도착점은 북서쪽 다이아몬드 블록 (x+1, z+0, 양옆 `symbol_cross`)
- 보호: 미로마다 범위(북서쪽 구조 블록 모서리 포함, 16×17칸) 아래 y62 전체가 거부(deny) 블록 → 학생이 미로 벽·바닥을 부수거나 블록을 놓을 수 없음 (`maze_build`에 포함). 수정이 필요하면 월드 빌더 권한으로 작업
- 16개 모두 모양이 다르고(좌우 대칭 복제도 없음) 정답 경로 길이는 48칸으로 같음 (막다른 길 8~9개) → 난이도 동일
- 미로 구조물: `behavior_packs/KyungbokAI BP/structures/kyungbokai/maze_01~16.mcstructure`
- 각 미로 북서쪽 모서리 바닥(x-1, z-1)의 구조 블록은 `mystructure:mz01~16`(그 미로 전용 저장본)을 불러옴. 예전에는 10개 모두 `mystructure:f1`(같은 모양)을 불러왔음
- `maze` 배치 순서: 매번 무작위 시작 번호 + 무작위 간격으로 16개를 돌며 배정 → 쓰이는 미로와 배정 모두 무작위. 서는 위치는 각 미로 입구 화살표 위, 북쪽을 바라봄

---

## NPC 목록

| NPC 이름 | 연결 다이얼로그 | 역할 |
|----------|----------------|------|
| `코드호출기` | `codebuilder_main` | 플레이어가 상호작용하면 "불러오기" 버튼으로 코드빌더(AI 확장 튜토리얼) 실행 |
| `수문장` | `guard_main` | 1~2차시. 광화문 소개 + AI 보안 시스템 구축 도움 요청 |
| `훈련교관` | `agent_main` | 3차시. 에이전트 훈련소 소개 + 활동 안내 |

---

## 다이얼로그 목록

| scene_tag | 파일 | 설명 |
|-----------|------|------|
| `codebuilder_main` | `dialogue/codebuilder_npc.json` | 코드호출기 NPC의 기본 대화. 버튼 클릭 시 `codebuilder navigate` 실행 |
| `guard_main` | `dialogue/guard_npc.json` | 수문장 NPC 대화. 광화문 소개 + AI 보안 시스템 구축 도움 요청 |
| `guard_reflect` | `dialogue/guard_npc.json` | 왕의 성찰 ① - AI 저작권 윤리 토론 질문 |
| `agent_main` | `dialogue/agent_npc.json` | 훈련교관 NPC 대화. 3차시 에이전트 훈련소 소개 + 활동 안내 |

---

## 커스텀 블록 목록

| 식별자 | 획득 방법 | 색상 |
|--------|-----------|------|
| `kyungbokai:number_1` | `/function numberblocks` 또는 크리에이티브 인벤토리 | 빨강 |
| `kyungbokai:number_2` | 〃 | 주황 |
| `kyungbokai:number_3` | 〃 | 노랑 |
| `kyungbokai:number_4` | 〃 | 초록 |
| `kyungbokai:number_5` | 〃 | 청록 |
| `kyungbokai:number_6` | 〃 | 파랑 |
| `kyungbokai:number_7` | 〃 | 보라 |
| `kyungbokai:number_8` | 〃 | 분홍 |
| `kyungbokai:number_9` | 〃 | 갈색 |
| `kyungbokai:number_10` | 〃 | 슬레이트 |
| `kyungbokai:number_11` | 〃 | 남색 |
| `kyungbokai:number_12` | 〃 | 연두 |
| `kyungbokai:number_13` | 〃 | 황토 |
| `kyungbokai:number_14` | 〃 | 자주 |
| `kyungbokai:number_15` | 〃 | 진회색 |

---

## 특수 문자 블록 목록

### 방향 블록

| 식별자 | 색상 |
|--------|------|
| `kyungbokai:arrow_up` | 파랑 |
| `kyungbokai:arrow_down` | 청록 |
| `kyungbokai:arrow_right` | 초록 |
| `kyungbokai:arrow_left` | 보라 |

### 논리 기호 블록

| 식별자 | 기호 | 색상 |
|--------|------|------|
| `kyungbokai:symbol_question` | ? | 보라 |
| `kyungbokai:symbol_exclamation` | ! | 주황 |
| `kyungbokai:symbol_check` | ✓ | 초록 |
| `kyungbokai:symbol_cross` | ✗ | 빨강 |

### 알파벳 블록

| 식별자 | 색상 |
|--------|------|
| `kyungbokai:letter_a` | 빨강 |
| `kyungbokai:letter_b` | 파랑 |
| `kyungbokai:letter_c` | 청록 |
| `kyungbokai:letter_d` | 보라 |
| `kyungbokai:letter_e` | 황금 |
| `kyungbokai:letter_f` | 남색 |

---

## 참고 사항

- `behavior_packs/KyungbokAI BP` → `development_behavior_packs/KyungbokAI BP` 로 항상 동기화 필요
- `resource_packs/KyungbokAI RP` → `development_resource_packs/KyungbokAI RP` 로 항상 동기화 필요
- 코드빌더 URL: `https://minecraft.makecode.com/#tutorial:github:ssakspirit/AI-extension-tutorial/tutorial-examples`
