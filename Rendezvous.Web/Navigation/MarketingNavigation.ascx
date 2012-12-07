<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MarketingNavigation.ascx.cs" Inherits="Rendezvous.Web.Navigation.Marketing" %>

<telerik:RadMenu ID="rmMarketingMenu" runat="server" CssClass="clear" EnableEmbeddedBaseStylesheet="False" EnableAjaxSkinRendering="False" EnableEmbeddedSkins="False" EnableTheming="False">
    <Items>
        <telerik:RadMenuItem runat="server" Text="Home" PostBack="False" NavigateUrl="~/Home" EnableTheming="False" FocusedCssClass="rmFocused active"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="Projects" PostBack="False" NavigateUrl="~/Projects" FocusedCssClass="rmFocused active"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="Testimonials" PostBack="False" NavigateUrl="~/Testimonials"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="Our Process" PostBack="False" NavigateUrl="~/OurProcess"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="Partners" PostBack="False" NavigateUrl="~/Partners"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="About Us" PostBack="False" NavigateUrl="~/AboutUs"></telerik:RadMenuItem>
        <telerik:RadMenuItem runat="server" Text="Contact Us" PostBack="False" NavigateUrl="~/ContactUs"></telerik:RadMenuItem>
    </Items>
</telerik:RadMenu>

