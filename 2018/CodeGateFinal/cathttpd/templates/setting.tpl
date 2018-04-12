<html>
<head>
  <title>Smart Cat Care Robot</title>
  <link rel="stylesheet" href="css/layout.css"/>
  <style>
    table { border-collapse: collapse;}
    table, th, td {border: 1px solid black;}
  </style>
  <script src="js/jquery-2.1.3-min.js"></script>
  <script>
    $(document).ready(function(){ 
      var year = new Date();
      $('span#year').text(year.getFullYear());

      $('.cssmenu_litemenu li').hover(function(){
        $(this).children('ul.submenu').css('left', 'auto')
        $(this).children('ul.submenu').show();
      },
      function(){
        $(this).children('ul.submenu').hide();
      })
    })

    if (navigator.userAgent.indexOf("MSIE ") > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)){
      alert("This site does not support IE.");    
    }

  </script>
</head>

  <body>
    <div class="main-container">
      <div class="top-container">

        <div class="banner">
        </div>

        <div class="title-bar"><h1>Smart Cat Care Robot</h1></div>
      </div>
      <div class="cssmenu_litemenu">
        <li><a href="/">Home</a></li>
        <li><a href="/about.html">About</a></li>
        <li><a href="/?page=view">View</a></li>
        <li>
          <a href="#">Setting</a>
          <ul class="submenu">
            <li><a href="/?page=setting">Setting</a></li>
            <li><a href="/?page=setting/save">Setting Save</a></li>
            <li><a href="/?page=setting/load">Setting Load</a></li>
          </ul>
        </li>
        <li><a href="/?page=admin">Admin</a></li>
        <li><a href="contact.html">Contact</a></li>
      </div>
      
      <div class="body-container">      
        <div class="content">
        make your cat care setting.<br/>
        Give Me your Cat Information and specify what to do each time.<br/>
        ( The basic robot can only take care of one cat. )
        </div>
      </div>
      <div class="footer">
        <h4>&copy <span id="year"></span> SCCR. All rights reserved.</h4>
      </div>
    </div>
  </body>
</html>