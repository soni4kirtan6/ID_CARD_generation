<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Id_card.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.js"></script>
   
    <title></title>
     <style>
          .img{
              width:30%;
              display:block;
              position:relative;
              
          }
           #img{
              width:100%;
              display:block;
              position:relative;
              
          }
        .colm{
            width: 0%;
            display:block;
            position:relative; 
        }
       
        .fitcover{
            width:100%;
        }
        .bt1
        {
            width:70%;
            position:absolute;
                top:5em;
                left:30em;
        }
        .bt2
        {
             width:70%;
             position:absolute;
                top:25em;
                left:30em;
        }
        .bt3
        {
            background-color:#66a3ff;         
             height:50px;
            width:90px;
         
        }
        .toolbar{

            background-color:#cccccc;
            padding:1px;
        }
          .property_bar{
              background-color:#cccccc;
              padding:1px;
        }
         .tabcontent {
             display:none;
             padding: 6px 12px;
             border-top: none;
         }
         
         #makeitmove {
             background: lightyellow;
             width: 100px;
             height: 100px;
             border: 1px solid orange;
             cursor: move;
         }
         #myDIV {
            width: 100%;
            padding: 50px 0;
            text-align: center;
            background-color: lightblue;
            margin-top: 20px;
          }
    </style>    
</head>
<body>
    <form id="form1" runat="server">
    <h1>BAPS Swaminarayan Chhatralay,Vallabh Vidhyanagar</h1>
    <div class="img">
        <div id="welcomeDiv"  class="answer_list" > WELCOME </div>
            <input type="button" name="button" value="Show Div" onclick="showDiv()" />
      
        <div id="img">
            <img src="ID_Card.jpg" class="fitcover" />
        </div>
    </div>        
   
      <div class="bt1">
            
              
                 <div class="toolbar" style="display:block;"><h3>Tool Bar</h3></div>
           <div class="tab">
                    <button class="btlinks" onclick="openTable(event, 'Static')">Static Items</button>
                    <button class="btlinks" onclick="openTable(event, 'Database')">Database Items</button>
                </div>

                <div id="Static" class="tabcontent" style="display:block">
                    <button id="st_back_img" style="width:200px;font-size:1em;">Background Image</button>
                    <button id="st_lable">Lable</button>
                    <asp:Button ID="Button1" runat="server" Text="Button" PostBackUrl="~/WebForm2.aspx" />
                </div>

                <div id="Database" class="tabcontent">
                    <button id="db_stud_img">Student Image</button>
                    <button id="db_roll" onclick="opentable(event,tabName)" >Roll No.</button>
                    <button id="db_name">Name</button>
                    <button id="db_study">Study</button>
                    <button id="db_year">Year</button>
                    <button id="db_contact">Contact</button>
                    <button id="db_dob">DOB</button>
                    <button id="db_bgrp">Blood gp.</button>
                    <button id="db_city" >City</button>
                </div>
             
	        </div>
       <input type="button" name="button" value="Show Div" onclick="showDiv()" />
        <div class="bt2"  >
		         <div>

                      <div class ="property_bar" style="display:block;"><h3>Property Bar</h3></div>

                      <table >
                            <tr>
                                   <td >Text Size:</td>
                                   <td>
                                        <input type="text" id="txt_size"/>
                                   </td>
                           </tr>
                     
                             <tr>
                                 <td>Text Color:</td>
                                <td>
                                       <input type="color" id="txt_color"/>
                                </td>
                             </tr>
                      </table>
                      
		             </div> 
	    </div>

    </form>
    <script>
        function openTable(event, tabName) {
            var i, tabcontent, btlinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            btlinks = document.getElementsByClassName("btlinks");
            for (i = 0; i < btlinks.length; i++) {
                btlinks[i].className = btlinks[i].className.replace("active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += "active";
        }


    </script>


    <script>
        $(document).ready(function opentable(event, tabName) {
            $("#makeitmove").draggable({ containment: "#img", scroll: false });
        });
</script>
</head>
<div id="db_roll">
<div id="makeitmove">Click and Drag me!</div>
</div>

    </form>

</body>
</html>

