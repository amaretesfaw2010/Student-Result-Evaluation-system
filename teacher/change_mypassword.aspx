<%@ Page Title="" Language="C#" MasterPageFile="~/design.Master" AutoEventWireup="true" CodeBehind="change_mypassword.aspx.cs" Inherits="WebApplication1.teacher.change_mypassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       <link href="../Styles/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="loginpanel">
    <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
        <asp:Label ID="Label1" runat="server" Text="Enter Old password"></asp:Label><asp:TextBox ID="txt_oldpas" runat="server"  placeholder="Old  password"  TextMode="Password"></asp:TextBox>
    <label for="user" class="buttons"></label>
  </div>
         <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
        <asp:Label ID="Label2" runat="server" Text="Enter New password"></asp:Label><asp:TextBox ID="txt_newpas" runat="server"  placeholder="New password"  TextMode="Password" ></asp:TextBox>
    <label for="user" class="buttons"></label>
  </div>
   <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
        <asp:Label ID="Label3" runat="server" Text="confirm new  password"></asp:Label><asp:TextBox ID="txt_confipass" runat="server"  placeholder="Retype new  password" TextMode="Password" ></asp:TextBox>
    <label for="user" class="buttons"></label>
  </div>
  <div class="buttons">
    <asp:Button ID="Button1" type="button" runat="server" value="change password"   Text="change password" OnClick="Button1_Click"  BackColor="Green" ForeColor="ActiveCaption" ></asp:Button>
    
  </div>
        <div class="txt">
            <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>
