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
(5, '$2b$10$8eYeiCi3gfQ2h/SDO97dkOZKPo/4dIGDhsY/rG7GlVlGAVcePhTrm' '2025-01-14 14:00:00'); -- 'user5'의 bcrypt 해시 (예시)
INSERT INTO `user_profile` (`user_no`, `email`, `phone`, `name`, `nickname`, `birth_date`, `gender`, `updated_at`) VALUES
(5, 'user5@example.com', '010-1111-0005', '정하준', '서버관리자5', '1985-09-10', 'M', '2025-01-14 14:00:00');
INSERT INTO `user_refresh_token` (`user_no`, `refresh_token`, `issued_at`, `expires_at`, `revoked`) VALUES
(5, 'refresh_token_example_string_for_user5_secure_and_random', '2025-05-12 14:20:00', '2025-06-11 14:20:00', FALSE);
