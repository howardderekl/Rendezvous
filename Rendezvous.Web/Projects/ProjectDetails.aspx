<%@ Page Title="Rendezvous Custom Homes - Project Details" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="Rendezvous.Web.Projects.ProjectDetails" %>
<%@ Import Namespace="System.Security.Policy" %>

<%@ Register Src="~/Testimonials/TestimonialCntrl.ascx" TagPrefix="uc1" TagName="TestimonialCntrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link rel="stylesheet" href='<%=Url.Content("~/styles/flexslider.css") %>' type="text/css" media="all" />
    <script src="~/scripts/jquery-flexslider.min.js"></script>
    <script src="~/scripts/jquery-flexslider-projectdetails.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <section id="portfolio" class="clear">
            <article>
                <figure><asp:Image runat="server" ID="imgDefaultPrjImg" ImageUrl="images/BLYNSY/Home1.jpg"/>
                    <figcaption>
                        <header><asp:Label runat="server" ID="lblProjectTitle" Text="" /></header>
                        <asp:Literal runat="server" ID="litProjectDesc" />
                        <footer></footer>
                    </figcaption>
                </figure>
            </article>
        </section>
        <div class="pad">
            <div id="featured_slide">
                <telerik:RadListView runat="server" ID="rlvSlider" ItemPlaceholderID="DisplayImagePlaceHolder">
                    <LayoutTemplate>
                        <section id="slider" class="flexslider">
                            <ul class="slides">
                                <li runat="server" id="DisplayImagePlaceHolder"></li>
                            </ul>
                        </section>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li>
                            <figure>
                                <asp:Image runat="server" ID="imgDisplayImage" ImageUrl='<%# Bind("ImagePath") %>' /></figure>
                        </li>
                    </ItemTemplate>
                </telerik:RadListView>
                <telerik:RadListView runat="server" ID="rlvCarousel" ItemPlaceholderID="CarouselImagePlaceHolder">
                    <LayoutTemplate>
                        <section id="carousel" class="flexslider">
                            <ul class="slides">
                                <li runat="server" id="CarouselImagePlaceHolder"></li>
                            </ul>
                        </section>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li>
                            <figure>
                                <asp:Image runat="server" ID="imgDisplayImage" ImageUrl='<%# Bind("ImagePath") %>' /></figure>
                        </li>
                    </ItemTemplate>
                </telerik:RadListView>
            </div>
        </div>
    </div>
    <aside id="right_column">
        <h2>Testimonials</h2>
        <uc1:TestimonialCntrl runat="server" ID="TestimonialCntrl" ShowAll="False" />
      </aside>
</asp:Content>
