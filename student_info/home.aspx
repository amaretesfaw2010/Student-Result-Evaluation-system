<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.student_info.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="loginpanel">
   <div class="txt">
       <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
             <p>  </p>
  </div>
   
          <br /><br />
         <div class="txt">
             
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
  
           <div class="txt">
            
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>