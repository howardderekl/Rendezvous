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
        <section class="flexslider">
          <ul class="slides">
            <li>
              <figure><a href="#"><img src="images/demo/960x360.gif" alt=""></a>
                <figcaption class="flex-caption">
                  <h2>Slide 1 Caption</h2>
                  <p>Dapiensociis temper donec auctortortis cumsan et curabitur condis lorem loborttis leo.</p>
                  <footer class="more"><a href="#">Read More Here &raquo;</a></footer>
                </figcaption>
              </figure>
            </li>
            <li>
              <figure><a href="#"><img src="images/demo/960x360.gif" alt=""></a>
                <figcaption class="flex-caption">
                  <h2>Slide 2 Caption</h2>
                  <p>Dapiensociis temper donec auctortortis cumsan et curabitur condis lorem loborttis leo.</p>
                  <footer class="more"><a href="#">Read More Here &raquo;</a></footer>
                </figcaption>
              </figure>
            </li>
            <li class="last">
              <figure><a href="#"><img src="images/demo/960x360.gif" alt=""></a>
                <figcaption class="flex-caption">
                  <h2>Slide 3 Caption</h2>
                  <p>Dapiensociis temper donec auctortortis cumsan et curabitur condis lorem loborttis leo.</p>
                  <footer class="more"><a href="#">Read More Here &raquo;</a></footer>
                </figcaption>
              </figure>
            </li>
          </ul>
        </section>
      </div>
      <!-- main content -->
        
      <div id="homepage">
        <!-- Introduction -->
        <section id="intro" class="clear">
          <article class="one_fifth first"><a href="#"><img src="images/demo/166x130.gif" alt=""></a>
            <h2>Indonectetus facilis</h2>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna.</p>
            <footer class="more"><a href="#">Read More &raquo;</a></footer>
          </article>
          <article class="one_fifth"><a href="#"><img src="images/demo/166x130.gif" alt=""></a>
            <h2>Indonectetus facilis</h2>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna.</p>
            <footer class="more"><a href="#">Read More &raquo;</a></footer>
          </article>
          <article class="one_fifth"><a href="#"><img src="images/demo/166x130.gif" alt=""></a>
            <h2>Indonectetus facilis</h2>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna.</p>
            <footer class="more"><a href="#">Read More &raquo;</a></footer>
          </article>
          <article class="one_fifth"><a href="#"><img src="images/demo/166x130.gif" alt=""></a>
            <h2>Indonectetus facilis</h2>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna.</p>
            <footer class="more"><a href="#">Read More &raquo;</a></footer>
          </article>
          <article class="one_fifth last"><a href="#"><img src="images/demo/166x130.gif" alt=""></a>
            <h2>Indonectetus facilis</h2>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna.</p>
            <footer class="more"><a href="#">Read More &raquo;</a></footer>
          </article>
        </section>
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
