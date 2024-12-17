<%@ Page Title="" Language="C#" MasterPageFile="~/design.Master" AutoEventWireup="true" CodeBehind="view_grade.aspx.cs" Inherits="WebApplication1.teacher.view_grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />
 <link href="../Styles/gridcss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="loginpanel">
   <div class="txt">
            <asp:Label ID="Label1" runat="server" Text="Enter Your campus ID"></asp:Label><asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
            <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
  </div>
   
          <br /><br />
         <div class="txt">
             <asp:GridView ID="GridView1" runat="server"  HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" AutoGenerateColumns="false"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"   EmptyDataText="you have no  any  continous Assessment"  EmptyDataRowStyle-ForeColor="Red">
 <Columns>
        <asp:BoundField DataField="fname" HeaderText="First Name" ItemStyle-Width="150px" />
        <asp:BoundField DataField="mname" HeaderText="Middle Name" ItemStyle-Width="100px" />
        <asp:BoundField DataField="lname" HeaderText="Last Name" ItemStyle-Width="100px" />
       <asp:BoundField DataField="dept" HeaderText="Department" ItemStyle-Width="100px" />
       <asp:BoundField DataField="total" HeaderText="total(70%)" ItemStyle-Width="100px" />
       <asp:BoundField DataField="average" HeaderText="Average(70%)" ItemStyle-Width="100px" />
       <asp:BoundField DataField="grade" HeaderText="Grade(by scale)" ItemStyle-Width="100px" />
       <asp:BoundField DataField="section" HeaderText="Section" ItemStyle-Width="100px" />
    </Columns>
<PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/>
</asp:GridView>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
  
           <div class="txt">
            <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>