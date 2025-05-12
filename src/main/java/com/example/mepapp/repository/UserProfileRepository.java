package com.example.mepapp.repository;

import com.example.mepapp.entity.UserProfile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {
    boolean existsByEmail(String email);
    boolean existsByNickname(String nickname);
}
