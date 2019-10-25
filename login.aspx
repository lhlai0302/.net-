<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="WebSite4_login" %>

<!DOCTYPE html>
<html lang="cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<title>学生管理系统登陆</title>
<link rel="stylesheet" type="text/css" href="../css/login.css">
<script type="text/javascript" src="../js/login.js"></script>
</head>

<body>
    <form runat="server">
	<div class="login_content">
		<div class="login_detailed">
			<div class="login_tab">登陆学生管理系统</div>
			<div id="login_t1" class="login_tab_left" style="display: block;">
				<div class="login_user">
					<div class="login_user_content f1">
						<ul>
							<li><asp:TextBox class="login_text" ID="loginId_stu"  value="请输入学号或教工号" runat="server" onfocus="slogin_text_onfocus(this)" onblur="slogin_text_onblur(this)" ></asp:TextBox></li>
							<li><asp:Label id="tip_Error_s1" runat="server"></asp:Label></li>
                            <li><asp:TextBox class="login_text"  ID="pwd_stu" value="请输入密码" onfocus="slogin_pwd_onfocus(this)" onblur="slogin_pwd_onblur(this)" runat="server" TextMode="Password"></asp:TextBox></li>
							<li><asp:Label id="tip_Error_s2" runat="server"></asp:Label></li>
							<li><asp:Button  class="button_blue"  runat="server" Text="登 录" ID="btn_Submit_Stu" OnClick="btn_Submit_Stu_Click" onmousedown="login_s_button_mousedown()" OnClientClick="return login_s_button_click()"/> </li>
							<li class="forget_psw"><a href="www.baidu.com" class="to-animate">忘记密码</a></li>
	                   </ul>    
					</div>	
				</div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>

