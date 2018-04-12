<html>
<head>
  <title>Smart Cat Care Robot</title>
  <link rel="stylesheet" href="css/layout.css"/>
  <style>
    table {border:1; border-collapse: collapse; width:100%}
    table, th, td {border: 1px solid black;}
    input{width:100%;}
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

        <form method="POST" action="/?page=setting/save/data">
          
          <div class="row">
            <h3>Cat Info</h3><br/>
          <table>
              <tr>
               <th>Name</th><td><input name="name" type="text" required></td>
               <th>Age</th><td><input name="age" type="text" required></td>
              </tr>
              <tr>
               <th>Gender</th><td><input name="gender" type="text" required></td>
               <th>Memo</th><td><input name="memo" type="text"></td>
              </tr>
          </table>
          </div>

          <div class="row">
          <table id="ee">
            <h3>Events  <button type="button" id="plus">+</button><button type="button" id="minus">-</button></h3><br/>
          </table>
          </div>

          <div class="row"><button id="submit">Save</button></div>
        </form>

        </div>
      </div>
      <script>
      var c = 0;
      var max = 12;
      window.onload = function(){
        $("#plus").click(function(){
          if(c >= max) { alert("Full."); return; } c+=1;
          tr_h = '<tr id="e-'+c+'"><th>Time(hours)</th><td><input name="time-'+c+'" type="text"></td>' +
            '<th>Event</th><td><input name="event-'+c+'" type="text"></td></tr>';
          $("#ee").append(tr_h);
        });
        $("#minus").click(function(){
         if(c <= 0) return;$("#e-" + c.toString() ).remove();c -= 1;
        });
      };
      </script>
      <div class="footer">
        <h4>&copy <span id="year"></span> SCCR. All rights reserved.</h4>
      </div>
    </div>
  </body>
</html>