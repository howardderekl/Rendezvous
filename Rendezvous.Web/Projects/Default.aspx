<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Projects.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <!-- RadList -->
        
            <telerik:RadListView runat="server" ID="rlvProjectTypeDetl" ItemPlaceholderID="ProjectTypePlaceHolder" OnNeedDataSource="rlvProjectTypeDetl_NeedDataSource">
                <LayoutTemplate>
                    <section id="comments">
                        <ul>
                            <li runat="server" id="ProjectTypePlaceHolder"></li>
                        </ul>
                    </section>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="comment_odd">
                        <article>
                            <header>
                                <figure>
                                    <asp:Image runat="server" ID="imgProjectType" ImageUrl='<%# Bind("ImageUrl") %>' Width="72" Height="72"/>
                                </figure>
                                <address>
                                    <asp:Label runat="server" ID="lblName" Text='<%# Bind("Title") %>' />
                                </address>
                            </header>
                            <section>
                                <asp:Literal runat="server" ID="litTestimonial" Text='<%# Bind("Description") %>' />
                            </section>
                        </article>
                    </li>   
                </ItemTemplate>
            </telerik:RadListView>
        
        <section>
            <telerik:RadListView runat="server" ID="rlvProjectTypeList" ItemPlaceholderID="ProjectPlaceHolder" OnNeedDataSource="rlvProjectTypeList_NeedDataSource">
            <EmptyDataTemplate>
                <p>Check back soon for projects of the selected type</p>
            </EmptyDataTemplate>
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
                                <asp:Literal runat="server" ID="litProjDesc" Text='<%#Eval("BriefDescription") %>'></asp:Literal>
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
                                <p><asp:Literal runat="server" ID="litProjDesc" Text='<%#Eval("BriefDescription") %>'></asp:Literal></p>
                                <footer><asp:HyperLink runat="server" ID="hlProjectLink" NavigateUrl='<%#string.Format("~/Projects/ProjectDetails.aspx?id={0}", Eval("ProjectKey")) %>' Text="View this Project &raquo;"></asp:HyperLink></footer>
                            </figcaption>
                        </figure>
                    </article>
                </li>
            </AlternatingItemTemplate>
        </telerik:RadListView>
        </section>
        <!-- RadList -->
    </div>
    <aside id="right_column">
        <h2 class="title">Project Types</h2>
        <telerik:RadListView runat="server" ID="rlvProjectTypeNav" ItemPlaceholderID="ProjectTypeNavPlaceHolder" OnNeedDataSource="rlvProjectTypeNav_NeedDataSource">
            <LayoutTemplate>
                <nav>
                    <ul>
                        <li><asp:HyperLink runat="server" ID="hlProjectTypeLinkDflt" Text="All Projects" NavigateUrl="~/Projects" /></li>
                        <li runat="server" id="ProjectTypenavPlaceHolder"></li>
                    </ul>
                </nav>
            </LayoutTemplate>
            <ItemTemplate>
                <li><asp:HyperLink runat="server" ID="hlProjectTypeLink" Text='<%# Bind("Title") %>' NavigateUrl='<%# string.Format("~/Projects/Default.aspx?id={0}", Eval("ProjectTypeKey")) %>' /></li>
            </ItemTemplate>
        </telerik:RadListView>
    </aside>
</asp:Content>
