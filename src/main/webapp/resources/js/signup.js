const signup = async () => {
    const email = document.querySelector('#email').value;
    const password = document.querySelector('#password').value;

    try {
        await axios.post('/signup', {
            email: email,
            password: password
        });
        console.log("POST 요청 완료");
        window.location.href = '/login'
        
    } catch (e) {
        console.log("Error", e);
        throw e;
    }
}
