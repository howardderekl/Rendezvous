<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Testimonials.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <h1>Testimonials</h1>
        <div>
            
        </div>
        <section id="comments">
            <telerik:RadListView runat="server" ID="rlvTestimonial" ItemPlaceholderID="TestimonialPlaceHolder" OnNeedDataSource="rlvTestimonial_NeedDataSource">
                <LayoutTemplate>
                    <ul>
                        <li runat="server" id="TestimonialPlaceHolder"></li>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="comment_odd">
                        <article>
                            <header>
                                <figure>
                                    <img src="../images/demo/avatar.gif" width="32" height="32" alt=""></figure>
                                <address>
                                    <asp:Label runat="server" ID="lblName" Text='<%# string.Format("By {0}", Eval("Name")) %>' />
                                </address>
                                <time datetime="2000-04-06T08:15+00:00"><asp:Label runat="server" ID="lblDate" Text='<%# string.Format("{0:d}", Eval("CreateDate")) %>' /></time>
                            </header>
                            <section>
                                <asp:Literal runat="server" ID="litTestimonial" Text='<%# Bind("Note") %>'></asp:Literal>
                            </section>
                        </article>
                    </li>   
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <li class="comment_even">
                        <article>
                            <header>
                                <figure>
                                    <img src="../images/demo/avatar.gif" width="32" height="32" alt=""></figure>
                                <address>
                                    <asp:Label runat="server" ID="lblName" Text='<%# string.Format("By {0}", Eval("Name")) %>' />
                                </address>
                                <time datetime="2000-04-06T08:15+00:00"><asp:Label runat="server" ID="lblDate" Text='<%# string.Format("{0:d}", Eval("CreateDate")) %>' /></time>
                            </header>
                            <section>
                                <asp:Literal runat="server" ID="litTestimonial" Text='<%# Bind("Note") %>'></asp:Literal>
                            </section>
                        </article>
                    </li>   
                </AlternatingItemTemplate>
            </telerik:RadListView>
        </section>
    </div>
</asp:Content>
