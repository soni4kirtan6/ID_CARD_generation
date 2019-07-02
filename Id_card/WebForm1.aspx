<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Id_card.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.js"></script>-->
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
       <title>Id Card GenDerate</title>
       <link type="text/css" href="StyleSheet1.css" rel="stylesheet"/>
        
        <script type="text/javascript" src="Script2.js"></script>
        <style>

        </style>
    
        <!--Script to test-->
        <script>

            
        </script>
</head>
<body>
    <!-- <h1>BAPS Swaminarayan Chhatralay,Vallabh Vidhyanagar</h1>-->
    <h1>ID Card Generator</h1>
    <div class="img">
        <div id="img">
            <!--<img src="ID_Card.jpg" class="fitcover" />-->
            <img src="Untitled.png" class="fitcover" />
            <div id="makeitmove1" class="divResize" style="font-size:40px;position:absolute; top:0px; left:0px;">sample text</div>
            
        </div>
    </div>        
   
      <div class="bt1">
            
          <div class="toolbar" style="display:block;"><h3>Tool Bar</h3></div>
           <div class="tab">
                    <button class="btlinks" onclick="openTable(event, 'Static')">Static Items</button>
                    <button class="btlinks" onclick="openTable(event, 'Database')">Database Items</button>
                </div>

                <div id="Static" class="tabcontent" style="display:block">
                    <button id="st_back_img" onclick="showDiv()" style="width:200px;font-size:1em;">Background Image</button>

                    <button id="st_lable" onclick="showLabel()">Lable</button>
                </div>
                    
                <div id="Database" class="tabcontent">
                    <button id="db_stud_img">Student Image</button>
                    <button id="db_roll">Roll No.</button>
                    <button id="db_name">Name</button>
                    <button id="db_study">Study</button>
                    <button id="db_year">Year</button>
                    <button id="db_contact">Contact</button>
                    <button id="db_dob">DOB</button>
                    <button id="db_bgrp">Blood gp.</button>
                    <button id="db_city" >City</button>
                </div>

          <div id="st_bg_img_browse" class="tabcontent" style="display:none">
              <form runat="server">
                  <asp:FileUpload ID="bg_img_file" runat="server" />
                       <asp:Button ID="btn_upload" text="Upload" OnClick="btn_upload_Click" runat="server" />
                  </form>
                    </div>
                    <div id="divResize" class="divResize">
            I am Draggable and Resizable 
            </div>
             
	        </div>
       <form >
           <div class="bt2">
               <div>

                   <div class="property_bar" style="display: block;">
                       <h3>Property Bar</h3>
                   </div>

                   <table>
                       <tr>
                           <td>Text:</td>
                           <td><input type="text" id="txt_text"/></td>
                       </tr>

                       <tr>
                           <td>Text Size:</td>
                           <td><input type="range" min="0" max="100"  id="txt_size" /></td>
                       </tr>

                       <tr>
                           <td>Text Color:</td>
                           <td><input type="color" id="txt_color" /></td>
                       </tr>
                   </table>

               </div>
           </div>

    </form>
    

<div id="img1">

</div>

</body>
</html>

