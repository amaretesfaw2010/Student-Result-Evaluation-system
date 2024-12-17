<%@ Page Title="Fill Assessment" Language="C#" MasterPageFile="~/design.Master" AutoEventWireup="true" CodeBehind="Fill_continous.aspx.cs" Inherits="WebApplication1.teacher.Fill_continous" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="../Styles/style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="loginpanel">
       <!-- Student Search -->
       <div class="txt">
           <asp:Label ID="Label1" runat="server" Text="Search Student"></asp:Label>
           <asp:TextBox ID="txt_searchStudent" runat="server" placeholder="Enter student name or ID"></asp:TextBox>
           <asp:Button ID="btn_search" runat="server" Text="Search"  OnClick="btn_search_Click" />
       </div>
       <br />

       <!-- Display Search Results -->
       <div class="txt">
    <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
    <asp:DropDownList ID="drop_studid" runat="server" Width="60%" Height="50%">
        <asp:ListItem Text="-- Select Student --" Value="" />
    </asp:DropDownList>
</div>

       <br />

       <!-- Assessment Selection -->
       <div class="txt">
           <asp:Label ID="Label3" runat="server" Text="Assessment Name"></asp:Label>
           <asp:DropDownList ID="drop_ass_id" runat="server" Width="60%" Height="50%"></asp:DropDownList>
       </div>
       <br />

       <!-- Result Input -->
       <div class="txt">
           <asp:TextBox ID="txt_result" runat="server" placeholder="Result"></asp:TextBox>
       </div>
       <br />

       <!-- Submit Button -->
       <div class="buttons">
           <asp:Button ID="Btn_fill" runat="server" Text="Fill Continuous" BackColor="Green" ForeColor="White" OnClick="Btn_fill_Click"  CssClass="buttons"/>
       </div>
       <br />

       <!-- Status Message -->
       <div class="txt">
           <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
