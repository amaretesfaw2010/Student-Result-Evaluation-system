<%@ Page Title="" Language="C#" MasterPageFile="~/ACCOUNT.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="WebApplication1.login.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />
  
    <style type="text/css">
        .login {
            text-align:center;
            margin:20px 10px 2px 4px;
            margin-top:50px;
        }
      table.label {
            font-size:large;
            font-style: italic;

        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="loginpanel">
  <div class="txt">
   <%-- <asp:TextBox id="user" type="text"   runat="server" placeholder="Username"></asp:TextBox>--%>
    <label for="user" class="entypo-user"></label>
  </div>
  <div class="txt">
    <%--<asp:TextBox id="pwd"  runat="server"  placeholder="Password"></asp:TextBox>--%>
    <label for="pwd" class="entypo-lock"></label>
  </div>
  <div class="buttons">
    <%--<asp:Button ID="Button1"  runat="server" type="button" value="Login"  Text="Login"  BackColor="Green"  ForeColor="ActiveBorder" OnClick="Unnamed1_Click"/>--%>
    
  </div>
        <div class="txt">
            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    
  </div>

       </div>
</asp:Content>
