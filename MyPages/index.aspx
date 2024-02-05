<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="IwInfoWeb.MyPages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Extra Information Services</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: url('https://www.extra.com.gr/wp-content/uploads/2016/07/11541053_ml.jpg') center no-repeat; 
        }

        .login-container {
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #45a049;
        }
    </style>

    <script type="text/javascript">
        function clearText(textBox)
        {
            if (textBox.value === textBox.defaultValue)
            {
                textBox.value = '';
            }
        }
    </script>
</head>
<body>
    <div class="login-container">        
        <form id="loginForm" runat="server">
            <div class="form-group">                
                &nbsp;&nbsp;<asp:TextBox ID="UserName"  runat="server"  Height="43px" style="text-align: center; font-size: xx-large;" 
                    Width="250px" onfocus="clearText(this)" >UserName</asp:TextBox>
            </div>
            <div class="form-group">                
               <asp:TextBox ID="Password" runat="server" Height="45px"  TextMode="Password" style="text-align: center; font-size: xx-large;" 
                   Width="250px" onfocus="clearText(this)" >Password</asp:TextBox>
            </div>
            <div class="form-group">                
                 <asp:Button ID="Login" runat="server" Text="Είσοδος" Width="194px" OnClick="Login_Click" Height="73px" style="font-size: xx-large" />
            </div>
        </form>
    </div>
</body>
</html>
