<%-- 
    Document   : coinResults
    Created on : Mar 26, 2017, 4:57:20 PM
    Author     : glenn
--%>

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
                <div class="ui container sectioncontent ">
                    <h1 class="ui horizontal divider header">
                        Input fields
                    </h1>
                    <br>
                    <div class="ui form">
                        <div class="field">
                            <label>ID</label>
                            <input type="text" placeholder="1 to 36">
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
                                <input type="text" placeholder="1 to 100">
                            </div>
                        </div>
                        <br>
                        <div class="ui fluid blue submit button">Toss</div>
                    </div>
                </div>
                <br>
            </div>

        <jsp:include page="footer.html"></jsp:include>

    </body>
</html>
