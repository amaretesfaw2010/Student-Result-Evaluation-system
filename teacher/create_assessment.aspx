<%@ Page Title="Create Assessment" Language="C#" MasterPageFile="~/design.Master" AutoEventWireup="true" CodeBehind="create_assessment.aspx.cs" Inherits="WebApplication1.teacher.create_assessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="../Styles/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="loginpanel">
  <div class="txt">
    <asp:TextBox id="txt_asstype" type="text"   runat="server" placeholder="Assessment type"></asp:TextBox>
    <label for="user" class="buttons"></label>
  </div>
  <div class="txt">
    <asp:TextBox id="txt_assname"  runat="server"  placeholder="Assessment Name"></asp:TextBox>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
         <div class="txt">
    <asp:TextBox id="txt_maxpoint"  runat="server"  placeholder="Maximum point"></asp:TextBox>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
  <div class="buttons">
    <asp:Button type="button" runat="server" value="Create Assessment" OnClick="Unnamed1_Click" Text="Create Assessment"   BackColor="Green" ForeColor="ActiveCaption" ></asp:Button>
    
  </div>
        <div class="txt">
            <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>
