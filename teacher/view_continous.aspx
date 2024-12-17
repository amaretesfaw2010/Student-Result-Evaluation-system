<%@ Page Title="View Continous" Language="C#" MasterPageFile="~/design.Master" AutoEventWireup="true" CodeBehind="view_continous.aspx.cs" Inherits="WebApplication1.teacher.view_continous" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <link href="../Styles/gridcss.css" rel="stylesheet" />
<link href="../Styles/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="loginpanel">
   <div class="txt">
            <asp:Label ID="Label1" runat="server" Text="Enter Your campus ID"></asp:Label><asp:TextBox ID="txt_id" runat="server" OnTextChanged="txt_id_TextChanged"></asp:TextBox>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
            <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
  </div>
   
          <br /><br />
         <div class="txt">
            <asp:GridView ID="GridView1" runat="server"  HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" AutoGenerateColumns="false"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"   EmptyDataText="you have no  any  continous Assessment"  EmptyDataRowStyle-ForeColor="Red">
 <Columns>
        <asp:BoundField DataField="Ass_type" HeaderText="Assessment Type" ItemStyle-Width="150px" />
        <asp:BoundField DataField="Ass_name" HeaderText="Assessment Name" ItemStyle-Width="100px" />
        <asp:BoundField DataField="max_point" HeaderText="maximum point" ItemStyle-Width="100px" />
       <asp:BoundField DataField="result" HeaderText="Result you get" ItemStyle-Width="100px" />
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
