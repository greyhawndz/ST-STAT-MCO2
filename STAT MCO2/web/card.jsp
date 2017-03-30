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
                            <form action="CardServlet" method="post">
                            <div class="ui form">
                                <div class="three fields">
                                    <div class="field">
                                    <input type="hidden" name="type" value="bin">
                                        <label>Number of Trials</label>
                                        <input type="text" name="trial" placeholder="N">
                                    </div>
                                    <div class="field">
                                        <label>Number of Experiment Simulations</label>
                                        <input type="text" name="exp" placeholder="10 to 100000">
                                    </div>                  
<!--                                    <div class="field">
                                        <label>Probability of Success</label>
                                        <div class="ui disabled input">
                                            <input type="text" placeholder="0.0 to 1.0">
                                        </div>
                                    </div>-->
                                    <div class="field">
                                        <label>Definition of Success</label>
                                        <input type="text" name="def" placeholder="number">
                                    </div>
                                    <div class="field">
                                        <label>Suit</label>
                                        <select name="suit" class="ui fluid dropdown">
                                            <option value="">Select</option>
                                            <option value="spade">Spade</option>
                                            <option value="heart">Heart</option>
                                            <option value="clover">Clover</option>
                                            <option value="diamond">Diamond</option>
                                            <option value="black">Black</option>
                                            <option value="red">Red</option>
                                       </select>
                                    </div>
                                </div>
                                <br>
                                <input type="submit" class="ui fluid blue submit button" value="Draw">
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="ui bottom attached tab segment" data-tab="2">
                        <div class="ui form">
                            <div class="ui form">
                                <form action="CardServlet" method="post">
                                <div class="three fields">
                                    <div class="field">
                                    <input type="hidden" name="type" value="neg">
                                        <label>Number of Trials</label>
                                        <input type="text" name="trial" placeholder="N">
                                    </div>
                                    <div class="field">
                                        <label>Number of Experiment Simulations</label>
                                        <input type="text" name="exp" placeholder="10 to 100000">
                                    </div>                  
<!--                                    <div class="field">
                                        <label>Probability of Success</label>
                                        <div class="ui disabled input">
                                            <input type="text" placeholder="0.0 to 1.0">
                                        </div>
                                    </div>-->
                                    <div class="field">
                                        <label>Definition of Success</label>
                                        <input type="text" name="def" placeholder="number">
                                    </div>
                                    <div class="field">
                                        <label>Suit</label>
                                        <select name="suit" class="ui fluid dropdown">
                                            <option value="">Select</option>
                                            <option value="spade">Spade</option>
                                            <option value="heart">Heart</option>
                                            <option value="clover">Clover</option>
                                            <option value="diamond">Diamond</option>
                                            <option value="black">Black</option>
                                            <option value="red">Red</option>
                                        </select>
                                    </div>
                                </div>
                                <br>
                                <input type="submit" class="ui fluid blue submit button" value="Draw">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="ui bottom attached tab segment" data-tab="3">
                        <div class="ui form">
                            <form action="CardServlet" method="post">
                            <div class="three fields">
                                <div class="field">
                                    <input type="hidden" name="type" value="hyp">
                                    <input type="hidden" name="suit" value="red">
                                    <label>Number of Trials</label>
                                    <input name="trial" type="text" placeholder="N">
                                </div>
                                <div class="field">
                                    <label>Number of Items in the Population</label>
                                    <input name="pop" type="text" placeholder="0 to 52">
                                </div> 
                                <div class="field">
                                    <label>Number of Success in Population</label>
                                    <input name="popSuc" type="text" placeholder="number">
                                </div>

                            </div>
                            <div class="two fields">

                                <div class="field">
                                    <label>Number of Experiment Simulations</label>
                                    <input name="exp" type="text" placeholder="10 to 100000">
                                </div>   
                                <div class="field">
                                    <label>Number of Correct Trials</label>
                                    <div class="ui input">
                                        <input name="correct" type="text" placeholder="0 to N" >
                                    </div>
                                </div>
                            </div>
                            <br>
                            <input type="submit" class="ui fluid blue submit button" value="Draw">
                        </div>
                    </form>
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
