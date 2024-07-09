function signup() {
    if (checkForm()) {
        $("form#signupForm").attr("action", "/signup");
        $("form#signupForm").submit();
    }
}

function checkForm() {
    console.log("checkForm in");
    if ($("#email").val() == "") {
        $("#altmsg").html("이메일을 입력하세요!!");
        $("#email").focus();
        return false;
    } else if ($("#password").val() == "") {
        $("#altmsg").html("패스워드를 입력하세요!!");
        $("#password").focus();
        return false;
    }
    return true;
}

// const signup = async () => {
//     const email = document.querySelector('#email').value;
//     const password = document.querySelector('#password').value;

//     try {
//         await axios.post('/signup', {
//             email: email,
//             password: password
//         });
//         console.log("POST 요청 완료");
//         window.location.href = '/login'
        
//     } catch (e) {
//         console.log("Error", e);
//         throw e;
//     }
// }
