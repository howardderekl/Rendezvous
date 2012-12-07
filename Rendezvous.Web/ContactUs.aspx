<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Marketing.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Rendezvous.Web.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="content">
        <h1>Contact Us</h1>
        <section>
          <h1></h1>
          <figure class="imgr"><img src="images/demo/imgr.gif" alt="" width="125" height="125"></figure>
          <p>Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</p>
          <p>Dapiensociis <a href="#">temper donec auctortortis cumsan</a> et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem.</p>
          <figure class="imgl"><img src="images/demo/imgl.gif" alt="" width="125" height="125"></figure>
          <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. For full terms of use of this template please read our <a href="http://www.os-templates.com/template-terms">website template licence</a>.</p>
          <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more HTML5 templates visit <a href="http://www.os-templates.com/">free website templates</a>.</p>
          <p>Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</p>
        </section>
        <section id="comments">
         <h2>Write A Comment</h2>
          <form action="#" method="post">
            <p>
              <input type="text" name="name" id="name" value="" size="22">
              <label for="name"><small>Name (required)</small></label>
            </p>
            <p>
              <input type="text" name="email" id="email" value="" size="22">
              <label for="email"><small>Mail (required)</small></label>
            </p>
            <p>
              <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
              <label for="comment" class="hidden"><small>Comment (required)</small></label>
            </p>
            <p>
              <input name="submit" type="submit" id="submit" value="Submit">
              &nbsp;
              <input name="reset" type="reset" id="reset" value="Reset">
            </p>
          </form>
        </section>
    </div>
    <aside id="right_column">
        <section>
          <h2>Get In Contact</h2>
          <address>
          Rendezvous Custom Homes<br>
          P.O. Box 11911<br>
          Jacson, WY<br>
          83002<br>
          <br>
          Tel: 307 733 7477<br>
          Email: <a href="#">contact@domain.com</a>
          </address>
        </section>
    </aside>
</asp:Content>
