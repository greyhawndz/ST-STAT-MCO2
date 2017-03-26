<%-- 
    Document   : card.jsp
    Created on : Mar 26, 2017, 5:21:19 PM
    Author     : glenn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
          href="css/semantic/semantic.min.css">
    <script src="css/semantic/semantic.min.js"></script>

    <title>Card</title>
    <style>
        #container {
            background-color: #ffffff;
            position: relative;
            z-index: 1;
        }
        .coverFixed {
            background-size: cover;
            background-attachment: fixed;
        }
        .headersection {
            height: 100vh;
        }
        .sectioncontent {
            margin-bottom: 70px;
            margin-top: 70px;
        }
    </style>

    <body>
        <div class="container" style="background-color: white;">
            <div class="headersection coverFixed" style="background-image: url(images/cardHeader.png);  background-position: 0 -120px; ">
                <jsp:include page="headerInverted.html"></jsp:include>

                    <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                        Experiment
                    </h1>
                    <h1 class="ui header  inverted centered" style="font-size: 7rem;">DRAW CARD
                    </h1>
                    
                </div>
                <div class="ui container sectioncontent ">
                    <h1 class="ui horizontal divider header">
                        Input fields
                    </h1>
                    <br>
                    <div id="distributionsTab" class="ui top attached tabular menu" style="margin-top: 30px;">
                        <div class="item active" data-tab="1">Binomial</div>
                        <div class="item" data-tab="2">Negative Binomial</div>
                        <div class="item" data-tab="3">Hypergeometric</div>
                        <div class="item" data-tab="4">Multinomial</div>
                    </div>
                    <div class="ui bottom attached tab segment active" data-tab="1">
                    <div class="ui form">
                        <div class="three fields">
                            <div class="field">
                                <label>Number of Trials</label>
                                <input type="text" placeholder="N">
                            </div>
                            <div class="field">
                                <label>Number of cards to be drawn</label>
                                <input type="text" placeholder="number">
                            </div>
                             <div class="field">
                                <label>Target number of cards</label>
                                <input type="text" placeholder="number">
                            </div>
                           <div class="field">
                            <label>Suit</label>
                            <select class="ui fluid dropdown">
                                <option value="">Select</option>
                                <option value="clover">Clover</option>
                                <option value="spade">Spade</option>
                                <option value="diamond">Diamond</option>
                                <option value="heart">Heart</option>
                                <option value="red">Red</option>
                                <option value="black">Black</option>
                              
                            </select>
                        </div>
                            
                        </div>
                        <br>
                        <div class="ui fluid blue submit button" onclick="location.href = 'cardResults.jsp';">Draw</div>
                    </div>
                    </div>
                     <div class="ui bottom attached tab segment" data-tab="2">
                    </div>
                    <div class="ui bottom attached tab segment" data-tab="3">
                    </div>
                    <div class="ui bottom attached tab segment" data-tab="4">
                    </div>
                </div>
                <br>
            </div>
            <script>
                $('#distributionsTab .item')
                    .tab();

            </script>
        <jsp:include page="footer.html"></jsp:include>

    </body>
</html>
