<html>
<head>
  <title>Smart Cat Care Robot</title>
  <link rel="stylesheet" href="css/layout.css"/>
  <style>
    pre {font-size:15px}
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
            <input type="file" id="fd"/>
            <pre id="pr"></pre>
            <textarea id="cs" style='display:none' readonly></textarea><br/>
            <div id="sm" style='display:none'>
              <input type="submit" id="sb" value="Load">
            </div>
        </div>
      </div>

      <script>
        var contents;
        function readSingleFile(evt) {
          var f = evt.target.files[0]; 
          if (f) {
            var r = new FileReader();
          r.onload = function(e) {
            contents = e.target.result;
            $("#pr").text("File Info \n" + "name: " + f.name + "\n" + "size: " + f.size + " bytes \n");
            $("#cs").text(contents);
          }
          r.readAsText(f);
          $("#cs").css("display", "block");$("#sm").css("display", "block");
              $("#sb").click(function(){
                var form = document.createElement("form");
                form.setAttribute("action", "/?page=setting/load/data");
                form.setAttribute("method", "POST");
                var hiddenField = document.createElement("input");
                hiddenField.setAttribute("type", "hidden");
                hiddenField.setAttribute("name", "data");
                hiddenField.setAttribute("value", contents);
                form.appendChild(hiddenField);
                document.body.appendChild(form);
                form.submit();
              });
          } else { alert("Failed to load file");
          $("#pr").text("");$("#cs").css("display", "none");$("#sm").css("display", "none"); }  
        }
        document.getElementById('fd').addEventListener('change', readSingleFile);
      </script>

      <div class="footer">
        <h4>&copy <span id="year"></span> SCCR. All rights reserved.</h4>
      </div>
    </div>
  </body>
</html>