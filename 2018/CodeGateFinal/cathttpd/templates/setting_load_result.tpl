<html>
<head>
  <title>Smart Cat Care Robot</title>
  <link rel="stylesheet" href="css/layout.css"/>
  <style>
    table {border:1; border-collapse: collapse; width:100%}
    table, th, td {border: 1px solid black;}
    pre {
      width: 99.8%;
      font-size: 15px;
      background: #efefef;
      border: 1px solid #777;
    }
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

          <div class="row" id="row-1">
            <h3>Cat Info <1></h3><br/>
          <table id="cat-1">
              <tr>
               <th>Name</th><td>%s</td>
               <th>Age</th><td>%s</td>
              </tr>
              <tr>
               <th>Gender</th><td>%s</td>
               <th>Memo</th><td>%s</td>
              </tr>
          </table>
          <a href="#" id="cat-1-events-o"> Events List Open/Close</a><pre id="cat-1-events" style='display:none'></pre><br/>
          <a href="#" id="cat-1-result-o"> Result Open/Close</a><pre id="cat-1-result" style='display:none'></pre>
          </div>

        </div>
      </div>

      <script>
        var Events_1 = {%s};
        var Result_1 = {%s};
        if(Events_1){
          for (key in Events_1) {
            $("#cat-1-events").append("<b>" + key +"</b> : "+Events_1[key]+"\n");
          }
          $("#cat-1-events-o").click(function(){
            if($("#cat-1-events").css("display") == "none"){$("#cat-1-events").show();}
            else {$("#cat-1-events").hide(); }
          });
        }

        if(Result_1){
          for (key in Result_1) {
            $("#cat-1-result").append("<b>" + key +"</b> : "+Result_1[key]+"\n");
          }
          $("#cat-1-result-o").click(function(){
            if($("#cat-1-result").css("display") == "none"){$("#cat-1-result").show();}
            else {$("#cat-1-result").hide(); }
          });
        }

      </script>

      <div class="footer">
        <h4>&copy <span id="year"></span> SCCR. All rights reserved.</h4>
      </div>
    </div>
  </body>
</html>