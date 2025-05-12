package com.example.mepapp.controller;

import com.example.mepapp.dto.UserInfoDto;
import com.example.mepapp.dto.PagedUserResponseDto;
import com.example.mepapp.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/me")
    public ResponseEntity<UserInfoDto> getCurrentUser(@AuthenticationPrincipal UserDetails userDetails) {
        // Assuming UserDetails.getUsername() returns the userId
        // You might need a custom UserDetails implementation to store more user info
        // or fetch it from the database using the username (userId)
        UserInfoDto userInfoDto = userService.getUserInfo(userDetails.getUsername()); 
        return ResponseEntity.ok(userInfoDto);
    }

    @GetMapping
    public ResponseEntity<PagedUserResponseDto> getAllUsers(@PageableDefault(size = 10, page = 0) Pageable pageable) {
        return ResponseEntity.ok(userService.getAllUsers(pageable));
    }

    // PATCH /api/users/me endpoint for updating user info would go here
    // Example:
    // @PatchMapping("/me")
    // public ResponseEntity<?> updateCurrentUser(@AuthenticationPrincipal UserDetails userDetails, @RequestBody UpdateUserDto updateUserDto) {
    //     userService.updateUserInfo(userDetails.getUsername(), updateUserDto);
    //     return ResponseEntity.ok("{\"message\": \"회원 정보가 수정되었습니다.\"}");
    // }

}
