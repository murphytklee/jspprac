package com.example.jspprac2.domain.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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
    public String handleSignup(@ModelAttribute SignupRequest signupRequest) throws Exception {
        System.out.println("Signup Controller");
        System.out.println("email = " + signupRequest.getEmail());
        System.out.println("password = " + signupRequest.getPassword());
        memberService.signup(signupRequest);
        return "login";
    }
    /*
     * @RequestBody와 @ModelAttribute의 차이 
     * https://tecoble.techcourse.co.kr/post/2021-05-11-requestbody-modelattribute/
     */
    @PostMapping("/login")
    public String handleLogin(@ModelAttribute LoginRequest loginRequest) throws Exception {
        
        System.out.println("login Controller");
        System.out.println("email = " + loginRequest.getEmail());
        System.out.println("password = " + loginRequest.getPassword());
        memberService.login(loginRequest);
        return "index";
    }
}
