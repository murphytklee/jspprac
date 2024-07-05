package com.example.jspprac2.domain.member.dto.request;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class LoginRequest {

    private String email;
    private String password;

}
