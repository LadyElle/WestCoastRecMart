<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" 
    AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WestCoastRecMart.Pages.Login" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="error" />
     <div class="loginContainer">
         <div>
            <label for="name">Name:</label>
            <input name="name" />
         </div>
         <div>
            <label for="password">Password:</label>
             <input type="password" name="password" />
        </div>
        <button type="submit">Log In</button>
    </div>
 </asp:Content>