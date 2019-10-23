function slogin_pwd_onblur(this_input) {
    if (!this_input.value) {
        this_input.style.color = "#ccc";
        this_input.value = "请输入您的密码";
    } else if (this_input.value == "请输入您的密码") {
        this_input.style.color = "#ccc";
    }
    else {
        this_input.style.color = "black";
        var error = document.getElementById("tip_Error_s2");
        error.innerHTML = "";
    }
}
function slogin_pwd_onfocus(this_input) {
    this_input.style.color = "black";
    if (this_input.value == "请输入您的密码") {
        this_input.value = "";
    }
}
function slogin_text_onblur(this_input) {
    if (!this_input.value) {
        this_input.style.color = "#ccc";
        this_input.value = "请填写您的学号或教工号";
    } else if (this_input.value == "请填写您的学号或教工号") {
        this_input.style.color = "#ccc";
    }
    else {
        this_input.style.color = "black";
    }
}

function slogin_text_onfocus(this_input) {
    this_input.style.color = "black";
    if (this_input.value == "请填写您的学号或教工号") {
        this_input.value = '';
    }
}

function login_s_button_mousedown() {
    var tip1 = document.getElementById("tip_Error_s1");
    var tip2 = document.getElementById("tip_Error_s2");
    var user = document.getElementById("loginId_stu");
    var pwd = document.getElementById("pwd_stu");
    if (user.value == "" || user.value == "请填写您的学号或教工号")
        tip1.innerHTML = "用户名不能为空!";
    if (pwd.value == "" || pwd.value == "请输入您的密码")
        tip2.innerHTML = "密码不能为空!";
}

function login_s_button_click() {
    var tip1 = document.getElementById("tip_Error_s1");
    var tip2 = document.getElementById("tip_Error_s2");
    if (tip1.innerHTML == "" && tip2.innerHTML == "") {
        return true;
    }
    return false;
}

