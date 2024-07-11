package com.example.jspprac2.domain.member.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.jspprac2.domain.member.dto.request.LoginRequest;
import com.example.jspprac2.domain.member.dto.request.SignupRequest;
import com.example.jspprac2.domain.member.entity.Member;
import com.example.jspprac2.domain.member.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {
    /**
     *  @TODO : Security, OAuth, Service 로직 리팩토링
     */
    private final MemberRepository memberRepository;

    public void signup(final SignupRequest signupRequest) throws Exception {

        if (memberRepository.findByEmail(signupRequest.getEmail()).isPresent()) {
            throw new IllegalStateException("이미 존재하는 회원입니다");
        }

        Member member = Member.builder()
            .email(signupRequest.getEmail())
            .password(signupRequest.getPassword())
            .build();

        memberRepository.save(member);
        System.out.println("회원가입 성공");
    }

    public void login(final LoginRequest loginRequest) throws Exception {
    Optional<Member> optionalMember = memberRepository.findByEmail(loginRequest.getEmail());

    if (optionalMember.isEmpty()) {
        throw new IllegalStateException("회원이 존재하지 않습니다.");
    }

    Member member = optionalMember.get();

    if (!member.getPassword().equals(loginRequest.getPassword())) {
        throw new IllegalStateException("비밀번호가 일치하지 않습니다.");
    }

    System.out.println("로그인 성공");
    }
}