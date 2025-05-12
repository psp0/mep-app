package com.example.mepapp.service;

import com.example.mepapp.dto.LoginRequestDto;
import com.example.mepapp.dto.TokenResponseDto; // Changed from LoginResponseDto
import com.example.mepapp.dto.TokenRefreshRequestDto;

public interface AuthService {
    TokenResponseDto login(LoginRequestDto loginRequestDto); // Changed return type
    TokenResponseDto refreshToken(TokenRefreshRequestDto tokenRefreshRequestDto); // Changed return type
    // void register(RegisterRequestDto registerRequestDto); // This is currently in UserService
}
