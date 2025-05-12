package com.example.mepapp.service;

import com.example.mepapp.dto.RegisterRequestDto;
import com.example.mepapp.dto.UserInfoDto;
import com.example.mepapp.dto.PagedUserResponseDto;
import com.example.mepapp.dto.UserListInfoResponseDto;
import com.example.mepapp.entity.User;
import com.example.mepapp.entity.UserAuth;
import com.example.mepapp.entity.UserProfile;
import com.example.mepapp.repository.UserAuthRepository;
import com.example.mepapp.repository.UserProfileRepository;
import com.example.mepapp.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final UserAuthRepository userAuthRepository;
    private final UserProfileRepository userProfileRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    @Override
    public void registerUser(RegisterRequestDto registerRequestDto) {
        if (!registerRequestDto.getPassword().equals(registerRequestDto.getConfirmPassword())) {
            throw new IllegalArgumentException("Passwords do not match.");
        }
        if (userRepository.existsByUserId(registerRequestDto.getUserId())) {
            throw new IllegalArgumentException("User ID already exists.");
        }
        if (userProfileRepository.existsByEmail(registerRequestDto.getEmail())) {
            throw new IllegalArgumentException("Email already exists.");
        }
        if (userProfileRepository.existsByNickname(registerRequestDto.getNickname())){
            throw new IllegalArgumentException("Nickname already exists.");
        }

        User user = new User();
        user.setUserId(registerRequestDto.getUserId());
        userRepository.save(user);

        UserAuth userAuth = new UserAuth();
        userAuth.setUser(user);
        userAuth.setPasswordHash(passwordEncoder.encode(registerRequestDto.getPassword()));
        userAuthRepository.save(userAuth);

        UserProfile userProfile = new UserProfile();
        userProfile.setUser(user);
        userProfile.setEmail(registerRequestDto.getEmail());
        userProfile.setPhone(registerRequestDto.getPhone());
        userProfile.setName(registerRequestDto.getName());
        userProfile.setNickname(registerRequestDto.getNickname());
        userProfile.setBirthDate(registerRequestDto.getBirthDate());
        userProfile.setGender(registerRequestDto.getGender());
        userProfileRepository.save(userProfile);
    }

    @Override
    public UserInfoDto getUserInfo(String userId) {
        User user = userRepository.findByUserId(userId)
                .orElseThrow(() -> new RuntimeException("User not found")); // Consider custom exception
        UserProfile userProfile = userProfileRepository.findById(user.getUserNo())
                .orElseThrow(() -> new RuntimeException("User profile not found")); // Consider custom exception

        return UserInfoDto.builder()
                .userId(user.getUserId())
                .email(userProfile.getEmail())
                .phone(userProfile.getPhone())
                .name(userProfile.getName())
                .nickname(userProfile.getNickname())
                .birthDate(userProfile.getBirthDate())
                .gender(userProfile.getGender())
                .build();
    }

    @Override
    @Transactional(readOnly = true)
    public PagedUserResponseDto getAllUsers(Pageable pageable) {
        Page<User> userPage = userRepository.findAll(pageable);
        List<UserListInfoResponseDto> userList = userPage.getContent().stream()
                .map(user -> {
                    // Fetching UserProfile separately. This could be optimized if needed.
                    UserProfile userProfile = userProfileRepository.findById(user.getUserNo())
                            .orElse(new UserProfile()); // Or throw exception / handle as appropriate
                    return UserListInfoResponseDto.builder()
                            .userNo(user.getUserNo())
                            .userId(user.getUserId())
                            .email(userProfile.getEmail()) // Assuming UserProfile is always present or handled
                            .nickname(userProfile.getNickname())
                            .createdAt(user.getCreatedAt())
                            .build();
                })
                .collect(Collectors.toList());

        return new PagedUserResponseDto(userPage.getTotalElements(), userPage.getTotalPages(), userList);
    }
}
