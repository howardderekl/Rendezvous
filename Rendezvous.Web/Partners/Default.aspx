<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Partners.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        
            <h1>Our Partners</h1>
            <telerik:RadListView runat="server" ID="rlvPartnerList" ItemPlaceholderID="PartnerTypeTitlePlaceHolder" OnNeedDataSource="rlvPartnerList_NeedDataSource">
                <LayoutTemplate>
                        <h2 runat="server" id="PartnerTypeTitlePlaceHolder"></h2>
                </LayoutTemplate>
                <ItemTemplate>
                    <h2><asp:Literal runat="server" ID="litartnerTypeTitle" Text='<%# Bind("Title") %>'></asp:Literal></h2>
                    <telerik:RadListView runat="server" ID="rlvPartnerListDetails" ItemPlaceholderID="PartnerDetailsPlaceHolder" DataSource='<%# Eval("PartnerList") %>'>
                        <LayoutTemplate>
                            <section id="portfolio" class="clear">
                                <ul>
                                    <li runat="server" id="PartnerDetailsPlaceHolder"></li>
                                </ul>
                            </section>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <li class="first">
                                <article>
                                    <figure>
                                    <figcaption>
                                        <header><asp:Literal runat="server" ID="litPartnerName" Text='<%# Bind("Name") %>'/></header>
                                        <p><asp:Literal runat="server" ID="litPartnerDesc" Text='<%# Bind("Description") %>'></asp:Literal></p>
                                        <footer><asp:HyperLink runat="server" ID="hlPartnerDetails" Text="View Partner Details &raquo;" NavigateUrl='<%# string.Format("~/Partners/Details/{0}", Eval("PartnerKey")) %>' /></footer>
                                    </figcaption>
                                    </figure>
                                </article>
                            </li>
                        </ItemTemplate>
                    </telerik:RadListView>
                </ItemTemplate>   
            </telerik:RadListView>
        
    </div>
    <aside id="right_column">
        <h2 class="title">Partner Types</h2>
        <telerik:RadListView runat="server" ID="rlvPartnerTypesList" ItemPlaceholderID="PartnerTypesPlaceHolder" OnNeedDataSource="rlvPartnerTypesList_NeedDataSource">
            <LayoutTemplate>
                <nav>
                    <ul>
                        <li><asp:HyperLink runat="server" ID="hlPartnerTypeLinkDflt" Text="All Partners" NavigateUrl="~/Partners" /></li>
                        <li runat="server" id="PartnerTypesPlaceHolder"></li>
                    </ul>
                </nav>
            </LayoutTemplate>
            <ItemTemplate>
                <li><asp:HyperLink runat="server" ID="hlProjectTypeLink" Text='<%# Bind("Title") %>' NavigateUrl='<%# string.Format("~/Partners/{0}", Eval("PartnerTypeKey")) %>' /></li>
            </ItemTemplate>
        </telerik:RadListView>
    </aside>
</asp:Content>
