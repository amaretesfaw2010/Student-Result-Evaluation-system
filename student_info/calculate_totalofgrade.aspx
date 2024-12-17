<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="calculate_totalofgrade.aspx.cs" Inherits="WebApplication1.student_info.calculate_total__grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="loginpanel">
    <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
  <asp:GridView ID="GridView1" runat="server"    EmptyDataText="you have no  any  continous Assessment"  EmptyDataRowStyle-ForeColor="Red"></asp:GridView>
    <label for="user" class="buttons"></label>
  </div>
  
  <div class="buttons">
    <asp:Button ID="Button1" type="button" runat="server" value="Calculate grade/Total"  Text="Calculate grade/Total" OnClick="Button1_Click"  BackColor="Green" ForeColor="ActiveCaption" ></asp:Button>
    
  </div>
        <div class="txt">
            <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>
 