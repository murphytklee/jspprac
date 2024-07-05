package com.example.jspprac2.domain.member.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.jspprac2.domain.member.entity.Member;


@Repository
public interface MemberRepository extends JpaRepository<Member, Long>{
    
    Optional<Member> findByEmail(String email) throws Exception;

}
