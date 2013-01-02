<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Testimonials.Default" %>
<%@ Register Src="~/Testimonials/TestimonialCntrl.ascx" TagPrefix="uc1" TagName="TestimonialCntrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <h1>Testimonials</h1>
        <div>Pictures Go here</div>
        <p>Some kind of write up goes here that will explain more about the testimonials of the site and where they come from.</p>
        <uc1:TestimonialCntrl runat="server" id="TestimonialCntrl" ShowAll="True" />
    </div>
</asp:Content>
