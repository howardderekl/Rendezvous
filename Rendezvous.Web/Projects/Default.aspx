<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Projects.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <!-- RadList -->
        <telerik:RadListView runat="server" ID="rlvProjectTypeList" ItemPlaceholderID="ProjectPlaceHolder" OnNeedDataSource="rlvProjectTypeList_NeedDataSource">
            <LayoutTemplate>
                <section id="portfolio" class="clear">
                    <ul>
                        <li runat="server" id="ProjectPlaceHolder"></li>
                    </ul>
                </section>    
            </LayoutTemplate>
            <ItemTemplate>
                <li class="first">
                    <article>
                        <figure><asp:Image runat="server" ID="imgDefaultPrjImg" ImageUrl='<%# Bind("DefaultImagePath") %>'/>
                            <figcaption>
                                <header><asp:Literal runat="server" ID="lblProjTitle" Text='<%#Eval("Title") %>' /></header>
                                <asp:Literal runat="server" ID="litProjDesc" Text='<%#Eval("Description") %>'></asp:Literal>
                                <footer><asp:HyperLink runat="server" ID="hlProjectLink" NavigateUrl='<%#string.Format("~/Projects/ProjectDetails.aspx?id={0}", Eval("ProjectKey")) %>' Text="View this Project &raquo;"></asp:HyperLink></footer>
                            </figcaption>
                        </figure>
                    </article>
                </li>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <li>
                    <article>
                        <figure><asp:Image runat="server" ID="imgDefaultPrjImg" ImageUrl='<%# Bind("DefaultImagePath") %>'/>
                            <figcaption>
                                <header><asp:Label runat="server" ID="lblProjTitle" Text='<%#Eval("Title") %>'></asp:Label></header>
                                <p><asp:Literal runat="server" ID="litProjDesc" Text='<%#Eval("Description") %>'></asp:Literal></p>
                                <footer><asp:HyperLink runat="server" ID="hlProjectLink" NavigateUrl='<%#string.Format("~/Projects/ProjectDetails.aspx?id={0}", Eval("ProjectKey")) %>' Text="View this Project &raquo;"></asp:HyperLink></footer>
                            </figcaption>
                        </figure>
                    </article>
                </li>
            </AlternatingItemTemplate>
        </telerik:RadListView>
        <!-- RadList -->
    </div>
</asp:Content>
