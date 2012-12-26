<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Projects.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <!-- content body -->
    
        <!-- RadList -->
        <telerik:RadListView runat="server" ID="rlvProjectTypeList" ItemPlaceholderID="ProjectTypePlaceHolder" OnNeedDataSource="rlvProjectTypeList_NeedDataSource">
            <LayoutTemplate>
                <section id="portfolio" class="clear">
                    <%--<div id="ProjectTypePlaceHolder" runat="server"></div>--%>
                    <ul id="ProjectTypePlaceHolder" runat="server"></ul>
                </section>    
            </LayoutTemplate>
            <ItemTemplate>
                <%--<div>
                    <div><h1><asp:Label runat="server" ID="lblProjectTypeTitle" Text='<%#Eval("Title") %>' /></h1></div>
                    <div><p><asp:Literal runat="server" ID="litProjectTypeDesc" Text='<%#Eval("Description") %>' /></p></div>--%>
                    <ul>
                        <telerik:RadListView runat="server" ID="rlvProjectList" ItemPlaceholderID="ProjectDetailsPlaceHolder" DataSource='<%#Eval("ProjectList") %>'>
                            <LayoutTemplate>
                                <li id="ProjectDetailsPlaceHolder" runat="server"></li>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <li>
                                    <article>
                                        <figure><asp:Image runat="server" ID="imgDefaultPrjImg" ImageUrl='<%# Bind("DefaultImagePath") %>'/></figure>
                                        <figcaption>
                                            <header><asp:Label runat="server" ID="lblProjTitle" Text='<%#Eval("Title") %>'></asp:Label></header>
                                            <p><asp:Literal runat="server" ID="litProjDesc" Text='<%#Eval("Description") %>'></asp:Literal></p>
                                            <footer><asp:HyperLink runat="server" ID="hlProjectLink" NavigateUrl='<%#string.Format("~/Project/{0}", Eval("ProjectKey")) %>' Text="View this Project &raquo;"></asp:HyperLink></footer>
                                        </figcaption>
                                    </article>
                                </li>
                            </ItemTemplate>
                        </telerik:RadListView>
                    </ul>
                <%--</div>--%>
            </ItemTemplate>
        </telerik:RadListView>
        <!-- RadList -->
    <!-- / content body -->
</asp:Content>
