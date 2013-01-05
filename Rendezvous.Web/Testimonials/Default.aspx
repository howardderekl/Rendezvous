<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Testimonials.Default" %>
<%@ Register Src="~/Testimonials/TestimonialCntrl.ascx" TagPrefix="uc1" TagName="TestimonialCntrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <link rel="stylesheet" href="../styles/flexslider.css" type="text/css" media="all">
    <script src="../scripts/jquery-flexslider.min.js"></script>
    <script src="../scripts/jquery-flexslider-setup.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <div id="featured_slide">
            <telerik:RadListView runat="server" ID="rlvProjectImages" ItemPlaceholderID="ItemPlaceHolder" OnNeedDataSource="rlvProjectImages_NeedDataSource">
                <LayoutTemplate>
                    <section class="flexslider">
                        <ul class="slides">
                            <li runat="server" id="ItemPlaceHolder"></li>
                        </ul>
                    </section>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>
                        <figure><asp:HyperLink runat="server" ID="hlFigure" NavigateUrl='<%#Bind("FigureUrl") %>' ImageUrl='<%#Bind("FigureImgUrl") %>' ToolTip='<%#Bind("SlideCaption") %>'/>
                        <%--<figcaption class="flex-caption">
                            <h2><asp:Label runat="server" ID="lblSlideCaption" Text='<%#Bind("SlideCaption") %>' /></h2>
                            <asp:Literal runat="server" ID="phSlideDesc" Text='<%#Bind("SlideDescription") %>' />
                          <asp:Panel runat="server" ID="pnlFooter" Visible='<%#Bind("HasReadMore") %>'><footer class="more"><asp:HyperLink runat="server" ID="hlMore" NavigateUrl='<%#Bind("ReadMoreUrl") %>' Text="Read More Here &raquo;"></asp:HyperLink></footer></asp:Panel>
                        </figcaption>--%>
                      </figure>
                    </li>
                </ItemTemplate>
            </telerik:RadListView>
      </div>
        <p>Rendezvous Custom Homes is proud of the residential properties that we build.  Our honesty and hard work allows us to build strong relationships with everybody that we work with in Jackson Hole.  Below are client testimonials that are included as part of our introductory package.  We encourage you to ask us for our reference list to hear feedback straight from the source.</p>
        <br/><br/>
        <uc1:TestimonialCntrl runat="server" id="TestimonialCntrl" ShowAll="True" />
    </div>
</asp:Content>
