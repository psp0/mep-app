package com.example.mepapp.service;

import com.example.mepapp.dto.RegisterRequestDto;
import com.example.mepapp.dto.UserInfoDto;
import com.example.mepapp.dto.PagedUserResponseDto; // Added
import org.springframework.data.domain.Pageable; // Added

public interface UserService {
    void registerUser(RegisterRequestDto registerRequestDto);
    UserInfoDto getUserInfo(String userId);
    PagedUserResponseDto getAllUsers(Pageable pageable); // Added
}
