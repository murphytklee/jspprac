function login() {
    if (checkForm()) {
        $("form#loginForm").attr("action", "/login");
        $("form#loginForm").submit();
    }
}

function checkForm() {
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


// const login = async () => {
//     const email = document.querySelector('#email').value;
//     const password = document.querySelector('#password').value;

//     try {
//         await axios.post('/login', {
//             email: email,
//             password: password
//         });
//         console.log("POST 요청 완료");
//         window.location.href = '/'
        
//     } catch (e) {
//         console.log("Error", e);
//         throw e;
//     }
// }
