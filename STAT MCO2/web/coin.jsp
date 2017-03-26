<%-- 
    Document   : coin
    Created on : Mar 26, 2017, 3:42:29 PM
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

    <title>Coin</title>
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
            <div class="headersection coverFixed" style="background-image: url(images/coinHeader.jpg);  background-position: 0 -120px; ">
                <jsp:include page="headerInverted.html"></jsp:include>

                    <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                        Experiment
                    </h1>
                    <h1 class="ui header inverted centered" style="font-size: 7rem;">COIN TOSS
                    </h1>
                   
                </div>
                <div class="ui container sectioncontent ">
                    <h1 class="ui horizontal divider header">
                        Input fields
                    </h1>
                    <br>
                    <div class="ui form">
                        <div class="field">
                            <label>ID</label>
                            <select class="ui fluid dropdown">
                                <option value="">Select</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                        <div class="three fields">
                            <div class="field">
                                <label>Number of Trials</label>
                                <input type="text" placeholder="N">
                            </div>
                            <div class="field">
                                <label>Number of Experiment Simulations</label>
                                <input type="text" placeholder="10 to 100000">
                            </div>
                            <div class="field">
                                <label>Probability of Success</label>
                                <div class="ui disabled input">
                                <input type="text" placeholder="50" value = "50">
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="ui fluid blue submit button" onclick="location.href = 'coinResults.jsp';">Toss</div>
                    </div>
                </div>
                <br>
            </div>

        <jsp:include page="footer.html"></jsp:include>

    </body>
</html>
