function handleAuthSubmit(url) {
    if (validateForm()) {
        $("#auth-form").attr("action", url);
        $("#auth-form").submit();
    }
}

function validateForm() {
    const email = $("#email").val();
    const password = $("#password").val();

    if (email === "") {
        $("#altmsg").html("이메일을 입력해주세요.");
        $("#email").focus();
        return false;
    } else if (password === "") {
        $("#altmsg").html("패스워드를 입력해주세요.");
        $("#password").focus();
        return false;
    }
    return true;
}

$(document).ready(function() {
    const errorMessage = $("#error-message").val();
    if (errorMessage) {
        alert(errorMessage);
        window.location.href = window.location.href; // 양식 다시 제출 팝업 제거를 위해 
    }
});

$("#auth-form").keyup(function(e) {
    if (e.keyCode == 13) {
        handleAuthSubmit();
    }
});
