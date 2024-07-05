package com.example.jspprac2.domain.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.jspprac2.domain.member.dto.request.LoginRequest;
import com.example.jspprac2.domain.member.dto.request.SignupRequest;
import com.example.jspprac2.domain.member.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    // View Mapping
    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("/signup")
    public String viewSignupPage() {
        return "signup";
    }

    @GetMapping("/login")
    public String viewLoginPage() {
        return "login";
    }

    // Control Mapping
    @PostMapping("/signup")
    public void handleSignup(@RequestBody SignupRequest signupRequest) throws Exception {
        memberService.signup(signupRequest);
    }

    @PostMapping("/login")
    public String handleLogin(@RequestBody LoginRequest loginRequest) {
        System.out.println("email = " + loginRequest.getEmail());
        System.out.println("password = " + loginRequest.getPassword());
        return "index";
    }
}
