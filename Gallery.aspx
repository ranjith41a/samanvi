<%@ page language="C#" autoeventwireup="true" inherits="Gallery, App_Web_wagb2jvd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="samanvi international Belur situated in heart of the city offering affordable luxury to all the travelers among Hotel samanvi international Belur , Belur Hotels , hotels in Belur" name="description" />

<meta content="Belur Hotels, Belur hotel booking, hotels in Belur, budget hotels Belur, Belur accommodation" name="keywords" />

   <%-- <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">--%>

    <title>HOTEL SAMANVI INTERNATIONAL - About Us</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
 
 <script type="text/javascript">
     var CurrentPage = 1;
     function GetImageIndex(obj) {
         while (obj.parentNode.tagName != "TD")
             obj = obj.parentNode;
         var td = obj.parentNode;
         var tr = td.parentNode;
         if (td.rowIndex % 2 == 0) {
             return td.cellIndex + tr.rowIndex;
         }
         else {
             return td.cellIndex + (tr.rowIndex * 2);
         }
     }
     function LoadDiv(url, lnk) {
         var img = new Image();
         var bcgDiv = document.getElementById("divBackground");
         var imgDiv = document.getElementById("divImage");
         var imgFull = document.getElementById("imgFull");
         var imgLoader = document.getElementById("imgLoader");
         var dl = document.getElementById("<%=DataList1.ClientID%>");
         var imgs = dl.getElementsByTagName("img");


         CurrentPage = GetImageIndex(lnk.parentNode) + 1;
         imgLoader.style.display = "block";
         img.onload = function () {
             imgFull.src = img.src;
             imgFull.style.display = "block";
             imgLoader.style.display = "none";
         };
         img.src = url;
         Prepare_Pager(imgs.length);
         var width = document.body.clientWidth;
         if (document.body.clientHeight > document.body.scrollHeight) {
             bcgDiv.style.height = document.body.clientHeight + "px";
         }
         else {
             bcgDiv.style.height = document.body.scrollHeight + "px";
         }

         imgDiv.style.left = (width - 650) / 2 + "px";
         imgDiv.style.top = "20px";
         bcgDiv.style.width = "100%";

         bcgDiv.style.display = "block";
         imgDiv.style.display = "block";
         return false;
     }
     function HideDiv() {
         var bcgDiv = document.getElementById("divBackground");
         var imgDiv = document.getElementById("divImage");
         var imgFull = document.getElementById("imgFull");
         bcgDiv.style.display = "none";
         imgDiv.style.display = "none";
         imgFull.style.display = "none";
     }
     function doPaging(lnk) {
         var dl = document.getElementById("<%=DataList1.ClientID%>");
         var imgs = dl.getElementsByTagName("img");
         var imgLoader = document.getElementById("imgLoader");
         var imgFull = document.getElementById("imgFull");

         var img = new Image();
         if (lnk.id == "Next") {
             if (CurrentPage < imgs.length) {
                 CurrentPage++;
                 imgLoader.style.display = "block";
                 imgFull.style.display = "none";
                 img.onload = function () {
                     imgFull.src = imgs[CurrentPage - 1].src;
                     imgFull.style.display = "block";
                     imgLoader.style.display = "none";
                 };
             }
         }
         else {
             if (CurrentPage > 1) {
                 CurrentPage--;
                 imgLoader.style.display = "block";
                 imgLoader.style.display = "none";
                 img.onload = function () {
                     imgFull.src = imgs[CurrentPage - 1].src;
                     imgFull.style.display = "block";
                     imgLoader.style.display = "none";
                 };
             }
         }
         Prepare_Pager(imgs.length);
         img.src = imgs[CurrentPage - 1].src;
     }
     function Prepare_Pager(imgCount) {
         var Previous = document.getElementById("Previous");
         var Next = document.getElementById("Next");
         var lblPrevious = document.getElementById("lblPrevious");
         var lblNext = document.getElementById("lblNext");
         if (CurrentPage < imgCount) {
             lblNext.style.display = "none";
             Next.style.display = "block";
         }
         else {
             lblNext.style.display = "block";
             Next.style.display = "none";
         }
         if (CurrentPage > 1) {
             Previous.style.display = "block";
             lblPrevious.style.display = "none";
         }
         else {
             Previous.style.display = "none";
             lblPrevious.style.display = "block";
         }
     }
</script>

<style type = "text/css">
     .modal
     {
        display: none; 
        position: absolute;
        top: 0px; 
        left: 0px;
        background-color:black;
        z-index:100;
        opacity: 0.8;
        filter: alpha(opacity=60);
        -moz-opacity:0.8;
        min-height: 100%;
     }
     #divImage
     {
        display: none;
        z-index: 1000;
        position: fixed;
        top: 0;
        left: 0;
        background-color:White;
        height: 550px;
        width: 610px;
        padding: 3px;
        border: solid 1px black;
     }
    .dlTable
    {
        border:double 1px #D9D9D9;
        width:200px;
        text-align:left;
    }
</style> 
  </head>

<body>
<form id="form1" runat="server">

  

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <h1 class="text">HOTEL SAMANVI INTERNATIONAL</h1>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="Home.aspx" class="active">Home</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Gallery.aspx">Gallery</a></li>
                        <li><a href="Rooms.aspx">Rooms</a></li>
                         <li><a href="Tariff.aspx">Tariff</a></li>
                        <li><a href="Facilities.aspx">Facilities</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <div class="about-main-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h4>EXPLORE OUR Hotel</h4>
            <div class="line-dec"></div>
            <h2>HOTEL SAMANVI INTERNATIONAL</h2>
            <p>Hotel Samanvi International is the most iconic and largest hotel situated in heart of the city which offers affordable luxury to all the travelers among Hotel Samanvi International.</p>
            <%--<div class="main-button">
              <a href="reservation.html">Discover More</a>
            </div>--%>
          </div>
        </div>
      </div>
    </div>
    </div>
 
  <!-- ***** Main Banner Area End ***** -->
  <div class="cities-town">
    <div class="content">
		
<!-- gallery -->
     <center>   
    <div>
<asp:DataList ID="DataList1" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="4">
    <ItemTemplate>
     <div class="row">
     
                        <div class="col-lg-3">
                         <div class="singel-course"  style="margin:5px; padding:3px;">
                    <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# Eval("FilePath")%>' onclick="LoadDiv(this.src, this)" 
                        style="cursor:pointer;box-shadow: 0px 0px 15px rgb(0 0 0 / 15%);
    background-color: white;
    padding: 6px;" Width="250px" />
                        </div>
                        </div>
               
     
      </div>
    </ItemTemplate> 
</asp:DataList>
<asp:Panel ID="pnlPager" runat="server" Height="20px" >
    <asp:LinkButton ID="lnkPrev" runat="server" CommandName = "Previous" 
        Text = "<< Previous" OnClick = "Pager_Click"></asp:LinkButton>
    &nbsp;
    <asp:LinkButton ID="lnkNext" runat="server" CommandName = "Next" 
        Text = "Next >>"  OnClick = "Pager_Click"></asp:LinkButton>
</asp:Panel>
    </div>
    <div id="divBackground" class="modal">
</div>
<div id="divImage" >
    <table style="height: 100%; width: 100%">
        <tr>
            <td valign="middle" align="center" colspan = "3" style ="height:500px;">
                <img id="imgLoader" runat="server" alt=""
                 src="images/loader.gif" />
                <img id="imgFull" alt="" src="" 
                 style="display: none;
                height: 500px;width: 600px" />
            </td>
        </tr>
        <tr>
            <td align = "left" style="padding:10px;width:200px">
              <a id = "Previous" href = "javascript:" onclick = "doPaging(this)" style ="display:none">Previous</a>
                <span id = "lblPrevious">Previous</span>
            </td>
             <td align="center" valign="middle" style ="width:200px">
                <input id="btnClose" type="button" value="close"
                 onclick="HideDiv()"/>
            </td>
            <td align = "right" style ="padding:10px;width:200px">
                <a id = "Next" href = "javascript:" onclick = "doPaging(this)">Next</a>
                <span id = "lblNext" style ="display:none">Next</span>
            </td>
        </tr>
        
    </table>
</div>
  
             </center>   
            <br />
		</div>
  </div>
  

  <div class="call-to-action">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
            <h2>Feel The Diffrence  </h2>
          <h4>Enjoy Staying With Our Hotel, We Provid The Most Lexurious service</h4>
        </div>
        <div class="col-lg-4">
          <div class="border-button">
           <a href="Home.aspx">Visit Again</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
           <p>Copyright © 2022 <a href="#">HOTEL SAMANVI INTERNATIONAL</a> All rights reserved. 
         <br>Design: <a href="http://dendronit.com/" target="_blank" title="free CSS templates">Dendron It Solutions</a></p>
        </div>
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>

  <script>
      $(".option").click(function () {
          $(".option").removeClass("active");
          $(this).addClass("active");
      });
  </script>
  </form>
  </body>
</html>
