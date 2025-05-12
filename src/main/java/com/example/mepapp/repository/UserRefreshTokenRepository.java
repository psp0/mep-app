package com.example.mepapp.repository;

import com.example.mepapp.entity.UserRefreshToken;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UserRefreshTokenRepository extends JpaRepository<UserRefreshToken, Long> {
    Optional<UserRefreshToken> findByRefreshToken(String refreshToken);
    Optional<UserRefreshToken> findByUser_UserId(String userId); // Added method
    void deleteByUser_UserNo(Long userNo);
}
