<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="upload_photo.aspx.cs" Inherits="WebApplication1.student_info.upload_photo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       <link href="../Styles/style.css" rel="stylesheet" />
    <style type="text/css">
        .img {
          border-radius:50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Image ID="Image1" runat="server"  ImageUrl="~/uog.png" Width="110px" CssClass="img"/>
     <div class="loginpanel">
    <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
         <asp:FileUpload ID="FileUpload1" runat="server" />
         
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
        <asp:Label ID="Label1" runat="server" Text="Resource Type"></asp:Label><asp:TextBox ID="txt_resource" runat="server"  placeholder="Resourcce types" ></asp:TextBox>
     
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
        <hr />
    <label for="user" class="buttons"></label>
  </div>

         <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
     <asp:GridView ID="gvImages" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  Visible="false"
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
            AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="First Name" />
          
                 <asp:BoundField DataField="mname" HeaderText="resource_description" />
              
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                    <%--<ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                    </ItemTemplate>--%>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    <label for="user" class="buttons"></label>
  </div>
   <div class="txt">
     <%-- <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label> <asp:DropDownList id="drop_studid" type="text"   runat="server" placeholder="Student FullName" Width="60%" Height="50%"></asp:DropDownList>--%>
       
    <label for="user" class="buttons"></label>
  </div>
         
   
        <div class="txt">
            <asp:Label ID="lbm" runat="server" Text=""></asp:Label>
    <%--<label for="pwd" class="entypo-lock"></label>--%>
  </div>
       </div>
</asp:Content>
