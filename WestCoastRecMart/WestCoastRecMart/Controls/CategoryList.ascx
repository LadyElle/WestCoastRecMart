<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryList.ascx.cs" Inherits="WestCoastRecMart.Pages.CategoryList" %>

<%=CreateHomeLinkHTML() %>

<% foreach (string cat in GetCategories()) {
       Response.Write(CreateLinkHTML(cat));
   } %>