<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TestimonialCntrl.ascx.cs" Inherits="Rendezvous.Web.Testimonials.TestimonialCntrl" %>
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
                                <asp:Literal runat="server" ID="litTestimonial" Text='<%# Bind("Note") %>' /><asp:HyperLink runat="server" ID="hlProjectDetails" NavigateUrl='<%# string.Format("~/projects/projectdetails.aspx?id={0}", Eval("ProjectKey")) %>' Text="...view project"/>
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
                                <asp:Literal runat="server" ID="litTestimonial" Text='<%# Bind("Note") %>' /><asp:HyperLink runat="server" ID="hlProjectDetails" NavigateUrl='<%# string.Format("~/projects/projectdetails.aspx?id={0}", Eval("ProjectKey")) %>' Text="...view project" />
                            </section>
                        </article>
                    </li>   
                </AlternatingItemTemplate>
            </telerik:RadListView>
        </section>