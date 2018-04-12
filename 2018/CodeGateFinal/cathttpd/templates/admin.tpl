<html>
<head>
  <title>Smart Cat Care Robot</title>
  <link rel="stylesheet" href="css/layout.css"/>
  <style>
    table {border:1; border-collapse: collapse; width:100%}
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

          <div class="row">
          <h3>Server Info</h3>
          </div>

          <div class="row">
            <table>
              <tr><th>Server Name</th><td>%s</td><th>Server Port</th><td>%ld</td></tr>
              <tr><th>MAX Request Size</th><td>%ld Bytes</td><th>MAX POST Size</th><td>%ld Bytes</td></tr>
              <tr><th>Server Time</th><td colspan=3>%s</td></tr>
            </table>
          </div>

          <div class="row">
          <h3>User Info</h3>
          </div>

          <div class="row">
            <table>
              <tr><th>User Name</th><td colspan=3>%s</td></tr>
              <tr><th>User Agent</th><td colspan=3>%s</td></tr>
            </table>
          </div>

          <div class="row"></div>
        </div>
      </div>
      <div class="footer">
        <h4>&copy <span id="year"></span> SCCR. All rights reserved.</h4>
      </div>
    </div>
  </body>
</html>