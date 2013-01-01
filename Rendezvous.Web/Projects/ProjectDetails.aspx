<%@ Page Title="Rendezvous Custom Homes - Project Details" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="Rendezvous.Web.Projects.ProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link rel="stylesheet" href="../styles/flexslider.css" type="text/css" media="all">
    <script src="../scripts/jquery-flexslider.min.js"></script>
    <script src="../scripts/jquery-flexslider-projectdetails.js"></script>
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
        <section>
          <article>
            <h2>Lorem ipsum dolor</h2>
            <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
            <ul>
              <li><a href="#">Lorem ipsum dolor sit</a></li>
              <li>Etiam vel sapien et</li>
              <li><a href="#">Etiam vel sapien et</a></li>
            </ul>
            <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
            <p class="more"><a href="#">Continue Reading &raquo;</a></p>
          </article>
        </section>
      </aside>
</asp:Content>
