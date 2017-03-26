<%-- 
    Document   : cardResults
    Created on : Mar 27, 2017, 1:25:56 AM
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


<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
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

    #chartdiv {
        width		: 100%;
        height		: 500px;
        font-size	: 11px;
    }	
</style>

<body>
    <div class="container" style="background-color: white;">
        <div class="headersection coverFixed" style="background-image: url(images/cardHeader.png);  background-position: 0 -120px; ">
            <jsp:include page="headerInverted.html"></jsp:include>

                <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                    Experiment results
                </h1>
                <h1 class="ui header inverted centered" style="font-size: 7rem;">CARDS
                </h1>

            </div>
            <div class="ui container sectioncontent ">
                <h1 class="ui horizontal divider header">
                    Graph
                </h1>
                <br>

                <script>
                    var chart = AmCharts.makeChart("chartdiv", {
                        "theme": "light",
                        "type": "serial",
                        "dataProvider": [{
                                "experiment": "1",
                                "ideal": 0.3,
                                "actual": 0.2
                            }, {
                                "experiment": "2",
                                "ideal": 0.3,
                                "actual": 0.2
                            }, {
                                "experiment": "3",
                                "ideal": 0.6,
                                "actual": 0.8
                            }, {
                                "experiment": "4",
                                "ideal": 0.5,
                                "actual": 0.6
                            }, {
                                "experiment": "5",
                                "ideal": 0.4,
                                "actual": 0.3
                            }, {
                                "experiment": "6",
                                "ideal": 0.4,
                                "actual": 0.7
                            }, {
                                "experiment": "7",
                                "ideal": 0.4,
                                "actual": 0.3
                            }, {
                                "experiment": "8",
                                "ideal": 0.4,
                                "actual": 0.3
                            }, {
                                "experiment": "9",
                                "ideal": 0.5,
                                "actual": 0.3
                            }, {
                                "experiment": "10",
                                "ideal": 0.6,
                                "actual": 0.7
                            }, {
                                "experiment": "11",
                                "ideal": 0.2,
                                "actual": 0.3
                            }, {
                                "experiment": "12",
                                "ideal": 0.5,
                                "actual": 0.3
                            }],
                        "valueAxes": [{
                                "unit": "%",
                                "position": "left",
                                "title": "Success Rate",
                            }],
                        "startDuration": 5,
                        "graphs": [{
                                "balloonText": "Ideal: <b>[[value]]</b>",
                                "fillAlphas": 0.9,
                                "lineAlpha": 0.2,
                                "title": "Ideal",
                                "type": "column",
                                "valueField": "ideal"
                            }, {
                                "balloonText": "Actual: <b>[[value]]</b>",
                                "fillAlphas": 0.9,
                                "lineAlpha": 0.2,
                                "title": "Actual",
                                "type": "column",
                                "clustered": false,
                                "columnWidth": 0.5,
                                "valueField": "actual"
                            }],
                        "plotAreaFillAlphas": 0.1,
                        "categoryField": "experiment",
                        "categoryAxis": {
                            "gridPosition": "start"
                        },
                        "export": {
                            "enabled": true
                        }

                    });
                </script>

                <!-- HTML -->
                <div id="chartdiv"></div>	
                <br>
                <br>
                <h1 class="ui horizontal divider header">
                    Frequency Table
                </h1>
                <br>
                <table class="ui celled table">
                    <thead>
                        <tr><th>Interval</th>
                            <th>Ideal</th>
                            <th>Actual</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>0.0-0.1</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.1-0.2</td>
                            <td>50</td>
                            <td>50</td>

                        </tr>
                        <tr>
                            <td>0.2-0.3</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.3-0.4</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.3-0.4</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.3-0.4</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>  
                            <td>0.4-0.5</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.5-0.6</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr> 
                            <td>0.6-0.7</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>0.7-0.8</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr> 
                            <td>0.8-0.9</td>
                            <td>50</td>
                            <td>50</td>
                        </tr>
                        <tr><td>9.0-1.0</td>
                            <td>50</td>
                            <td>50</td></tr>
                    </tbody>
                </table>
            </div>
            <br>
            <br>


        </div>

    <jsp:include page="footer.html"></jsp:include>

</body>
</html>
