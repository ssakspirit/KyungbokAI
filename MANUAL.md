# KyungbokAI 개발 매뉴얼

> 제작: stevecoding  
> 최종 수정: 2026-05-05 (훈련교관 NPC 추가)

---

## 함수 명령어 목록

게임 내에서 `/function <이름>` 으로 실행합니다.

| 명령어 | 실행 방법 | 기능 |
|--------|-----------|------|
| `info` | `/function info` | 월드 소개 메시지를 전체 채팅에 출력 |
| `numberblocks` | `/function numberblocks` | 숫자 블록 1~10을 실행한 플레이어에게 지급 |
| `open_codebuilder` | `/function open_codebuilder` | 실행한 플레이어에게 코드빌더(AI 확장 튜토리얼) 오픈 |
| `specialblocks` | `/function specialblocks` | 특수 문자 블록 14종(방향 4, 기호 4, 알파벳 A-F)을 실행한 플레이어에게 지급 |
| `setnpc` | `/function setnpc` | 월드 내 모든 NPC에 다이얼로그 일괄 연결 (`코드호출기`, `수문장`, `훈련교관`) |

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
