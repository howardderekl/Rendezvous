<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rendezvous.Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <!-- HOMEPAGE ONLY -->
    <link rel="stylesheet" href="styles/flexslider.css" type="text/css" media="all">
    <script src="scripts/jquery-flexslider.min.js"></script>
    <script src="scripts/jquery-flexslider-setup.js"></script>
    <!-- END HOMEPAGE ONLY -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="pad">
      <!-- ################################################################################################ -->
      <!-- Slider -->
      <div id="featured_slide">
          <asp:Repeater runat="server" ID="repFlexSlider">
              <HeaderTemplate>
                    <section class="flexslider">
                        <ul class="slides">          
              </HeaderTemplate>
              <ItemTemplate>
                    <li>
                        <figure><asp:HyperLink runat="server" ID="hlFigure" NavigateUrl='<%#Bind("FigureUrl") %>' ImageUrl='<%#Bind("FigureImgUrl") %>' ToolTip='<%#Bind("SlideCaption") %>'/>
                        <figcaption class="flex-caption">
                            <h2><asp:Label runat="server" ID="lblSlideCaption" Text='<%#Bind("SlideCaption") %>' /></h2>
                            <asp:Literal runat="server" ID="phSlideDesc" Text='<%#Bind("SlideDescription") %>' />
                          <asp:Panel runat="server" ID="pnlFooter" Visible='<%#Bind("HasReadMore") %>'><footer class="more"><asp:HyperLink runat="server" ID="hlMore" NavigateUrl='<%#Bind("ReadMoreUrl") %>' Text="Read More Here &raquo;"></asp:HyperLink></footer></asp:Panel>
                        </figcaption>
                      </figure>
                    </li>      
              </ItemTemplate>
              <FooterTemplate>
                        </ul>
                    </section>
              </FooterTemplate>
          </asp:Repeater>
      </div>
      <!-- main content -->
        
      <div id="homepage">
        <!-- Introduction -->
          <telerik:RadListView runat="server" ID="rlvProjetTypeList" ItemPlaceholderID="ProjectTypePlaceHolder" OnNeedDataSource="rlvProjetTypeList_NeedDataSource">
              <LayoutTemplate>
                  <section id="intro" class="clear">
                      <article runat="server" id="ProjectTypePlaceHolder"></article>
                  </section>
              </LayoutTemplate>
              <ItemTemplate>
                  <article class="one_sixth">
                      <asp:HyperLink runat="server" ID="hlProjectTypeImg" ImageUrl='<%# Bind("ImageUrl") %>' NavigateUrl='<%# string.Format("~/projects/default.aspx?id={0}", Eval("ProjectTypeKey")) %>' />
                      <h2><asp:Label runat="server" ID="lblProjectTypeName" Text='<%# Bind("Title") %>' /></h2>
                      <p><asp:Literal runat="server" ID="litProjectDesc" Text='<%# Bind("BriefDescription") %>' /></p>
                      <footer class="more"><asp:HyperLink runat="server" ID="hlProjectLink" Text="View Projects &raquo;" NavigateUrl='<%# string.Format("~/projects/default.aspx?id={0}", Eval("ProjectTypeKey")) %>' /></footer>
                  </article>
              </ItemTemplate>
          </telerik:RadListView>
        <!-- / Introduction -->
        <!-- ########################################################################################## -->
        <!-- Services -->
        <section id="services" class="last clear">
          <h1 class="hidden">Services We Offer</h1>
          <article class="one_third first">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
          <article class="one_third">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
          <article class="one_third">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
          <article class="one_third first">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
          <article class="one_third">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
          <article class="one_third last">
            <figure class="clear"><img src="images/demo/48x48.gif" alt="">
              <figcaption>
                <h2>Indonectetus facilis</h2>
                <p>Proin quam etiam ultrices suspen disse in justo eu magna.</p>
              </figcaption>
            </figure>
          </article>
        </section>
        <!-- / Services -->
      </div>
      <!-- ################################################################################################ -->
      <div class="clear"></div>
    </div>
</asp:Content>
