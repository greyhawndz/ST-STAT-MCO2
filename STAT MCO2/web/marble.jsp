<%-- 
    Document   : marble
    Created on : Mar 26, 2017, 5:41:31 PM
    Author     : glenn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
          href="css/semantic/semantic.min.css">
    <script src="css/semantic/semantic.min.js"></script>

    <title>Marble</title>
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
            <div class="headersection coverFixed" style="background-image: url(images/marbleHeader.jpg);  background-position: 0 -120px; ">
                <jsp:include page="headerInverted.html"></jsp:include>

                    <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                        Experiment
                    </h1>
                    <h1 class="ui header inverted centered" style="font-size: 7rem;">PICK A MARBLE
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
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                                <option value="32">32</option>
                                <option value="33">33</option>
                                <option value="34">34</option>
                                <option value="35">35</option>
                                <option value="36">36</option>

                                
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
                                <input type="text" placeholder="0.0 to 1.0">
                            </div>
                        </div>
                        <br>
                        <div class="ui fluid blue submit button" onclick="location.href = 'marbleResults.jsp';">Pick</div>
                    </div>
                </div>
                <br>
            </div>

        <jsp:include page="footer.html"></jsp:include>

    </body>
</html>
