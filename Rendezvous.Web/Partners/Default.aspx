<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Partners.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <section>
            <h1>Our Partners</h1>
        </section>
    </div>
    <aside id="right_column">
        <h2 class="title">Partner Types</h2>
        <telerik:RadListView runat="server" ID="rlvPartnerTypesList" ItemPlaceholderID="PartnerTypesPlaceHolder">
            <LayoutTemplate>
                <nav>
                    <ul>
                        <li><asp:HyperLink runat="server" ID="hlProjectTypeLinkDflt" Text="All Projects" NavigateUrl="~/Partners" /></li>
                        <li runat="server" id="PartnerTypesPlaceHolder"></li>
                    </ul>
                </nav>
            </LayoutTemplate>
            <ItemTemplate>
                <li><asp:HyperLink runat="server" ID="hlProjectTypeLink" Text='<%# Bind("Title") %>' NavigateUrl='<%# string.Format("~/Projects/Default.aspx?id={0}", Eval("PartnerTypeKey")) %>' /></li>
            </ItemTemplate>
        </telerik:RadListView>
    </aside>
</asp:Content>
