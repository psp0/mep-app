USE mep_db;

-- User 1
INSERT INTO `user` (`user_no`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'user1', '2025-01-10 10:00:00', '2025-01-10 10:00:00');
INSERT INTO `user_auth` (`user_no`, `password_hash`, `pw_changed`) VALUES
(1, '$2b$10$ETejlVoPg1nOVF23LKOAIOoQtIfgeK5e2L396TkQyrkE/BcFM4bJC', '2025-01-10 10:00:00'); -- 'user1'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(1, 'user1@example.com', '010-1111-0001', '김민준', '개발자꿈나무1', '1990-03-15', 'M', '2025-01-10 10:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(1, 'refresh_token_example_string_for_user1_blahblah_very_long', '2025-05-12 14:00:00', '2025-06-11 14:00:00', FALSE);

-- User 2
INSERT INTO `user` (`user_no`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'user2', '2025-01-11 11:00:00', '2025-01-11 11:00:00');
INSERT INTO `user_auth` (`user_no`, `password_hash`, `pw_changed`) VALUES
(2, '$2b$10$wcaPSNwLGoETx2OheGt5NekXYXwNOSXtzRnkjyOxgl.doUVVuujRO', '2025-01-11 11:00:00'); -- 'user2'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(2, 'user2@example.com', '010-1111-0002', '이서연', '코딩천재2', '1992-07-20', 'F', '2025-01-11 11:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(2, 'refresh_token_example_string_for_user2_another_long_one', '2025-05-12 14:05:00', '2025-06-11 14:05:00', FALSE);

-- User 3
INSERT INTO `user` (`user_no`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'user3', '2025-01-12 12:00:00', '2025-01-12 12:00:00');
INSERT INTO `user_auth` (`user_no`, `password_hash`, `pw_changed`) VALUES
(3, '$2b$10$EVQ5pVi.Qiuq1Esfn22jYugAThNQe8HuMulTrc3rbZJGftHZtAU9i', '2025-01-12 12:00:00'); -- 'user3'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(3, 'user3@example.com', '010-1111-0003', '박도윤', '데이터분석가3', '1988-11-05', 'M', '2025-01-12 12:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(3, 'refresh_token_example_string_for_user3_yet_another_token', '2025-05-12 14:10:00', '2025-06-11 14:10:00', FALSE);

-- User 4
INSERT INTO `user` (`user_no`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'user4', '2025-01-13 13:00:00', '2025-01-13 13:00:00');
INSERT INTO `user_auth` (`user_no`, `password_hash`, `pw_changed`) VALUES
(4, '$2b$10$gtPT6uDRsy.qzY3ew87y6ejUeVlAY6kIy6XrTbewn9RVFMRuvR7.y', '2025-01-13 13:00:00'); -- 'user4'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(4, 'user4@example.com', '010-1111-0004', '최지우', 'UX디자이너4', '1995-01-30', 'F', '2025-01-13 13:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(4, 'refresh_token_example_string_for_user4_unique_value_here', '2025-05-12 14:15:00', '2025-06-11 14:15:00', FALSE);

-- User 5
INSERT INTO `user` (`user_no`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'user5', '2025-01-14 14:00:00', '2025-01-14 14:00:00');
INSERT INTO `user_auth` (`user_no`, `password_hash`, `pw_changed`) VALUES
(5, '$2b$10$8eYeiCi3gfQ2h/SDO97dkOZKPo/4dIGDhsY/rG7GlVlGAVcePhTrm', '2025-01-14 14:00:00'); -- 'user5'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(5, 'user5@example.com', '010-1111-0005', '정하준', '서버관리자5', '1985-09-10', 'M', '2025-01-14 14:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(5, 'refresh_token_example_string_for_user5_secure_and_random', '2025-05-12 14:20:00', '2025-06-11 14:20:00', FALSE);

-- Unit table INSERT statements
INSERT INTO `unit` (`unit_id`, `chapter_no`, `title`, `description`) VALUES
(201, 201, '다항식', '다항식의 기본 연산과 인수정리를 통해 다항식 구조를 이해한다.'),
(202, 202, '방정식과 부등식', '복소수를 포함한 다양한 방정식과 부등식의 풀이 방법을 학습한다.'),
(203, 203, '도형과 방정식', '좌표평면에서 도형을 방정식으로 표현하고 위치 관계를 분석한다.'),
(204, 204, '집합과 명제', '집합 연산과 논리적 명제의 구조를 이해한다.'),
(205, 205, '함수와 그래프', '함수 개념과 그래프 해석 능력을 기른다.'),
(206, 206, '경우의 수', '사건 발생 경우를 수학적으로 계산하는 방법을 익힌다.'),
(207, 207, '지수와 로그 함수', '지수와 로그의 개념 및 그래프를 이해하고 방정식을 푼다.'),
(208, 208, '삼각함수', '삼각함수의 그래프와 주기·변환을 활용한다.'),
(209, 209, '수열', '수열의 규칙성과 합을 분석하고 증명한다.'),
(210, 210, '함수의 극한과 연속', '함수의 극한 값을 구하고 연속성을 탐구한다.'),
(211, 211, '미분', '도함수를 이용해 함수의 변화를 해석한다.'),
(212, 212, '적분', '적분의 개념과 정적분을 활용한다.'),
(213, 213, '경우의 수(확통)', '확률 계산을 위한 경우의 수 원리를 학습한다.'),
(214, 214, '확률', '확률의 개념과 조건부확률, 베이즈 정리를 이해한다.'),
(215, 215, '통계', '자료 분석과 통계적 추정을 수행한다.'),
(216, 216, '이차곡선', '원·타원·쌍곡선·포물선의 방정식과 성질을 탐구한다.'),
(217, 217, '평면벡터', '평면벡터 연산과 내적을 통해 도형 문제를 해결한다.'),
(218, 218, '공간도형과 공간좌표', '3차원 공간의 벡터와 도형을 분석한다.');

-- Sub_unit table INSERT statements
INSERT INTO `sub_unit` (`unit_id`, `sub_chapter_no`, `sub_title`, `description`) VALUES
(201, 1, '다항식의 연산', '다항식의 덧셈·뺄셈·곱셈·나눗셈 규칙을 학습한다.'),
(201, 2, '나머지정리·인수정리', '다항식을 다른 다항식으로 나눌 때의 나머지와 인수를 찾는다.'),
(201, 3, '인수분해·항등식', '다항식을 인수분해하고 항등식을 활용하여 식을 변형한다.'),
(202, 1, '복소수와 이차방정식', '복소수 개념과 이차방정식의 근을 구한다.'),
(202, 2, '여러 가지 방정식', '분수·무리·삼차 등 여러 유형의 방정식을 해결한다.'),
(202, 3, '부등식의 해석·연립부등식', '부등식 영역 해석 및 연립부등식 풀이를 익힌다.'),
(203, 1, '직선의 방정식·거리·기울기', '직선의 방정식, 두 점 사이 거리, 기울기를 다룬다.'),
(203, 2, '원의 방정식·이동', '원의 표준형 방정식과 평행 이동을 학습한다.'),
(203, 3, '도형과 직선·원의 위치 관계', '도형과 직선 및 원 사이의 위치 관계를 판정한다.'),
(204, 1, '집합의 표현과 연산', '집합을 기호로 표현하고 합·교·차 연산을 수행한다.'),
(204, 2, '명제·조건·역·대우', '명제의 참·거짓과 조건·역·대우를 파악한다.'),
(204, 3, '필요충분조건', '필요조건과 충분조건을 구분하고 판별한다.'),
(205, 1, '함수의 뜻·표현', '함수의 정의와 식·표·그래프 표현을 익힌다.'),
(205, 2, '여러 가지 함수', '절댓값 함수 등 다양한 함수의 특징을 학습한다.'),
(205, 3, '합성함수·역함수', '합성함수와 역함수의 정의와 성질을 이해한다.'),
(206, 1, '순열·조합 기본법칙', '합·곱의 법칙과 순열·조합을 적용한다.'),
(206, 2, '중복순열·중복조합', '반복 허용 순열·조합을 계산한다.'),
(206, 3, '이항정리·파스칼삼각형', '이항정리를 전개하고 파스칼 삼각형을 활용한다.'),
(207, 1, '지수법칙·지수방정식·지수그래프', '지수법칙과 그래프, 지수방정식 풀이를 다룬다.'),
(207, 2, '로그의 정의·성질·로그방정식·로그그래프', '로그의 기본 성질과 그래프, 로그방정식을 학습한다.'),
(208, 1, '삼각비의 뜻과 그래프', '삼각비의 정의와 그래프를 이해한다.'),
(208, 2, '삼각함수 y=sin x, cos x, tan x', '기본 삼각함수의 특징을 익힌다.'),
(208, 3, '삼각함수의 활용(주기, 변환, 합성)', '삼각함수의 주기성, 그래프 변환, 합성을 다룬다.'),
(209, 1, '등차·등비수열, 합 공식', '등차·등비수열의 일반항과 합을 구한다.'),
(209, 2, '수열의 합(Sigma) 계산 기법', '시그마 표기법을 이용해 수열의 합을 계산한다.'),
(209, 3, '귀납적 정의(점화식)와 계차 수열', '점화식과 계차 수열을 분석한다.'),
(210, 1, '극한의 정의·성과', '극한의 기본 정의와 성질을 학습한다.'),
(210, 2, '무한대/제로 극한·좌우극한', '무한·0 극한 및 좌우극한을 다룬다.'),
(210, 3, '함수의 연속·점근선', '연속성 판정과 점근선을 이해한다.'),
(211, 1, '미분계수와 도함수', '미분계수 개념과 도함수 계산을 익힌다.'),
(211, 2, '여러 함수의 미분법(합·곱·체인룰)', '합, 곱, 체인룰을 활용한 미분법을 학습한다.'),
(211, 3, '접선·증가·감소·극값·평균값 정리', '도함수를 이용해 그래프의 형태를 분석한다.'),
(212, 1, '부정적분·정적분의 뜻', '적분의 기본 개념과 표기를 다룬다.'),
(212, 2, '기본 정리·치환·부분적분', '적분 기본정리와 치환·부분적분 기법을 학습한다.'),
(212, 3, '정적분의 활용(넓이, 부피, 평균값)', '정적분으로 넓이·부피·평균값을 구한다.'),
(213, 1, '합·곱의 법칙, 분할', '경우의 수 기본 원칙을 적용한다.'),
(213, 2, '순열·조합·이항정리 재복습', '순열·조합 및 이항 전개를 복습한다.'),
(213, 3, '중복·원순열·분할수', '중복 순열, 원순열, 분할수를 학습한다.'),
(214, 1, '확률의 뜻·고전적 정의', '확률의 기본 정의와 성질을 학습한다.'),
(214, 2, '조건부확률·베이즈정리', '조건부확률과 베이즈 정리를 적용한다.'),
(214, 3, '독립·종속, 전환법칙(덧셈·곱셈)', '독립·종속 사건과 전환 법칙을 다룬다.'),
(215, 1, '자료의 정리(평균·분산·표준편차)', '기초 통계량을 계산하고 해석한다.'),
(215, 2, '표본·모집단·표본분포', '표본분포와 중심극한정리를 학습한다.'),
(215, 3, '통계적 추정(신뢰구간·모평균·모비율)', '신뢰구간을 이용해 모수를 추정한다.'),
(216, 1, '원·타원의 표준형·이동', '원과 타원의 방정식을 표준형과 이동형으로 학습한다.'),
(216, 2, '쌍곡선·포물선의 성질', '쌍곡선과 포물선의 정의와 특징을 이해한다.'),
(216, 3, '이차곡선 간 위치관계·응용', '이차곡선의 교점과 응용 문제를 해결한다.'),
(217, 1, '벡터의 정의·합·차·실수배', '벡터의 기본 개념과 연산을 학습한다.'),
(217, 2, '내적·벡터의 성분과 성립조건', '벡터 내적과 성분을 이용한 조건을 다룬다.'),
(217, 3, '평면도형 벡터 풀이', '삼각형·사각형을 벡터로 풀이한다.'),
(218, 1, '공간벡터·평행·수직 조건', '공간벡터의 연산과 평행·수직 조건을 학습한다.'),
(218, 2, '직선·평면의 방정식과 교점', '공간에서 직선·평면 방정식을 다룬다.'),
(218, 3, '공간도형의 거리·각·부피 계산', '공간도형의 거리, 각도, 부피를 계산한다.');
