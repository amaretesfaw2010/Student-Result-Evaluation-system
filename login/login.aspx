<%@ Page Title="" Language="C#" MasterPageFile="~/ACCOUNT.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="WebApplication1.login.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/Site.css" rel="stylesheet" />
  
    <style type="text/css">
        /* Center the login panel */
        .loginpanel {
            width: 100%;
            max-width: 400px;
            margin: 100px auto;
            padding: 20px 30px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-family: Arial, sans-serif;
        }

        /* Textbox styles */
        .loginpanel .txt {
            position: relative;
            margin-bottom: 20px;
        }

        .loginpanel .txt input {
            width: 100%;
            padding: 10px 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            outline: none;
            transition: border-color 0.3s;
        }

        .loginpanel .txt input:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }

        /* Placeholder icon styling */
        .loginpanel label {
            position: absolute;
            top: 50%;
            right: 12px;
            transform: translateY(-50%);
            font-size: 18px;
            color: #aaa;
        }

        /* Login button styles */
        .buttons .aspNet-Button {
            background-color: #28a745;
            color: #fff;
            font-size: 16px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            text-transform: uppercase;
            transition: background-color 0.3s;
        }

        .buttons .aspNet-Button:hover {
            background-color: #218838;
        }

        /* Error label styling */
        .loginpanel .txt label.error-message {
            display: block;
            color: red;
            margin-top: 5px;
            font-size: 14px;
        }

        /* General responsive adjustments */
        @media screen and (max-width: 500px) {
            .loginpanel {
                padding: 15px 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="loginpanel">
       <!-- Username Field -->
       <div class="txt">
           <asp:TextBox ID="user" runat="server" placeholder="Username" REQUIRED="REQUIRED"></asp:TextBox>
           <label for="user" class="entypo-user">&#128100;</label> <!-- User icon -->
       </div>
       
       <!-- Password Field -->
       <div class="txt">
           <asp:TextBox ID="pwd" TextMode="password" runat="server" placeholder="Password" REQUIRED="REQUIRED"></asp:TextBox>
           <label for="pwd" class="entypo-lock">&#128274;</label> <!-- Lock icon -->
       </div>

       <!-- Login Button -->
       <div class="buttons">
           <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="aspNet-Button" OnClick="Unnamed1_Click" />
       </div>

       <!-- Error Label -->
       <div class="txt">
           <asp:Label ID="lbl" runat="server" CssClass="error-message" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
