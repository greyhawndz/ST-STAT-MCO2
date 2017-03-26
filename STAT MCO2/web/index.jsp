<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <script src="https://code.jquery.com/jquery-3.1.1.min.js"
                integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
        crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css"
              href="css/semantic/semantic.min.css">
        <script src="css/semantic/semantic.min.js"></script>

        <title>Home</title>
        <style>
            #container {
                background-color: #ffffff;
                position: relative;
                z-index: 1;
            }
        </style>
    </head>
    <body>

        <div class="container" style="background-color: white;">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="ui container">
                    <br>
                    <h1 class="ui horizontal divider header">Select</h1>
                    <div class="ui three cards">
                        <div class="ui card">
                            <div class="image">
                                <img src="images/coin.jpg">
                            </div>
                            <div class="content">
                                <a class="header">Coin</a>
                                <div class="description">Probability of getting heads</div>
                                <br>
                                <button class="ui blue fluid button">Go To Page</button>

                            </div>
                        </div>
                        <div class="ui card">
                            <div class="image">
                                <img src="images/card.jpeg">
                            </div>
                            <div class="content">
                                <a class="header">Card</a>
                                <div class="description">Probability of getting heads</div>
                                <br>
                                <button class="ui blue fluid button">Go To Page</button>

                            </div>
                        </div>
                        <div class="ui card">
                            <div class="image">
                                <img src="images/marble.png">
                            </div>
                            <div class="content">
                                <a class="header">Marble</a>
                                <div class="description">Probability of getting heads</div>
                                <br>
                                <button class="ui blue fluid button">Go To Page</button>

                            </div>
                        </div>
                    </div>


                <jsp:include page="navbar.jsp"></jsp:include>



                    <h1 class="ui horizontal divider header">Toss coin</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/coin.jpg">
                            </div>
                        </div>
                        <div class="ui eight wide column">
                            <div class="ui content justify">Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations.</div>
                            <br> <br>
                            <button class="ui blue fluid button">Add Friend</button>
                        </div>
                    </div>
                    <br>
                    <h1 class="ui horizontal divider header">Toss coin</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/card.jpeg">
                            </div>
                        </div>
                        <div class="ui eight wide column">
                            <div class="ui content justify">Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations.</div>
                            <br> <br>
                            <button class="ui fluid blue  button">Add Friend</button>
                        </div>
                    </div>
                    <br> <br>
                    <h1 class="ui horizontal divider header">Toss coin</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/marble.png">
                            </div>
                        </div>
                        <div class="ui eight wide column">
                            <div class="ui content justify">Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations. Get probability of getting a
                                head or a tail based on simulations.</div>
                            <br> <br>
                            <button class="ui fluid blue button">Add Friend</button>
                        </div>
                    </div>
                </div>

                <script>
                    $('.card').hover(function () {
                        $(this).transition('bounce');
                    }, function () {
                    });
                </script>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>