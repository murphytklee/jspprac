<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ---------------------------------------------------------------------------------------------------------------------------
  --  [ Header NAVIGATION AREA ] 
  --  @TODO 1. User Info Modal 구현 (Absolute 제거)
  --        2. nav-collapse toggle 아이콘 크기 조정
  --------------------------------------------------------------------------------------------------------------------------- -->
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
    <div class="container-fluid d-flex justify-content-between">
        <!-- Nav Logo -->
        <a class="navbar-brand" href="" onclick="window.location.href='/'">Home</a> 
         
        <!-- Nav side Toggle Btn -->
        <div id="hide-menu" class="btn-header transparent mb-2" title="Toggle Menu" onclick="toggleSidebar()">
            <a href="javascript:void(0);" class="btn-toggle" style="font-size:16px;">
                <i class="fa-solid fa-indent fa-flip-horizontal"></i>
                <span class="d-none">사이드 메뉴</span>
            </a>
        </div>

        <!-- Nav Head Toggle Btn -->
        <button class="navbar-toggler" id="navbar-toggle-btn" type="button" data-toggle="collapse" data-target="#nav-tab" aria-controls="nav-tab" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Nav Head Content -->
        <div class="collapse navbar-collapse justify-content-center" id="nav-tab">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="common">공통</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="hr">인사</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="accounting">회계</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="form">Form</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="tap">Tap</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-menu="grid">Grid</a>
                </li>
            </ul>
        </div>

        <!-- Nav Profile -->
        <div class="header-right-panel">
            <button type="button" id="ifrmPageMemo" title="페이지 메모 활성화" class="btn btn-sm" style="display:none;">
                <i class="far fa-sticky-note"></i>
            </button>
            <div id="login-info"> 
                <div id="usrInfo"> 
                    <div data-bs-toggle="dropdown" aria-expanded="false" title="최근접속:${loginLog.CNCT_DTM}">
                        <span class="fa-stack">
                            <i class="fa-solid fa-circle fa-inverse fa-stack-1x fa-xl"></i>
                            <i class="fa-solid fa-user fa-stack-1x fa-lg"></i>
                        </span>
                        <span class="usr-nm">${sUsrNm}님 환영합니다</span>
                    </div>
                    <div class="dropdown-menu p-0">
                        <div class="dropdown-header bg-primary text-white rounded-top fs-l lh-base">
                            <i class="fa-solid fa-user fa-fw"></i> ${sUsrNm}님
                            <p class="text-info ps-2 text-wrap">${sDeptNM}</p> 
                            <div class="fs-s fw-300 lh-sm m-1"></div>
                        </div>
                        <div class="w-100 px-3 pb-1" style="background:#fffbc9;">
                            <p class="m-0">
                                <i class="fa-solid fa-fill-drip fa-fw lh-sm"></i>테마설정
                            </p>
                            <ul class="theme-list">
                                <li class="w-50">
                                    <a href="#" class="theme-list-item" data-action="changeTheme" data-theme="default-theme">
                                        <span class="">
                                            <i class="fa-regular fa-circle fa-xl text-dark"></i>
                                        </span>
                                        <span class="theme-list-name">Light</span>
                                    </a>
                                </li>
                                <li class="w-50">
                                    <a href="#" class="theme-list-item" data-action="changeTheme" data-theme="dark-theme">
                                        <span class="">
                                            <i class="fa-solid fa-circle fa-xl text-dark shadow-sm"></i>
                                        </span>
                                        <span class="theme-list-name">Dark</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="dropdown-divider m-0"></div>
                        <a class="dropdown-item fw-500 py-2" data-action="userLogout">
                            <i class="fa-solid fa-right-from-bracket fa-fw"></i><span>Logout</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<!-- ---------------------------------------------------------------------------------------------------------------------------
  --  [ SIDE NAVIGATION AREA ] 
  --------------------------------------------------------------------------------------------------------------------------- -->

<div id="sidebar" class="sidebar" style="width: 150px;">
    <ul class="sidebar-nav" id="sidebar-nav">

    </ul>
</div>