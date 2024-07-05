package com.example.jspprac2.domain.member.service;

import org.springframework.stereotype.Service;

import com.example.jspprac2.domain.member.dto.request.SignupRequest;
import com.example.jspprac2.domain.member.entity.Member;
import com.example.jspprac2.domain.member.repository.MemberRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {

    private final MemberRepository memberRepository;

    public void signup(final SignupRequest signupRequest) throws Exception {

        if (memberRepository.findByEmail(signupRequest.getEmail()).isPresent()) {
            throw new IllegalStateException();
        }

        Member member = Member.builder()
            .email(signupRequest.getEmail())
            .password(signupRequest.getPassword())
            .build();

        memberRepository.save(member);
        System.out.println("회원가입 성공");
    }
}