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


        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
        <script src="https://www.amcharts.com/lib/3/serial.js"></script>
        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

        <title>Home</title>
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

            #chartdivCoin {
                width		: 100%;
                height		: 500px;
                font-size	: 11px;
            }	
            #chartdivCard {
                width		: 100%;
                height		: 500px;
                font-size	: 11px;
            }		
            #chartdivMarble {
                width		: 100%;
                height		: 500px;
                font-size	: 11px;
            }	

        </style>
    </head>
    <body>

        <div class="container" style="background-color: white;">
            <div class="headersection coverFixed" style="background-image: url(images/indexHeader.jpg);  background-position: 0 -120px; ">
                <jsp:include page="headerInverted.html"></jsp:include>

                    <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                        PROBABILITY DISTRIBUTION
                    </h1>
                    <h1 class="ui header inverted centered" style="font-size: 7rem;">MCO2
                    </h1>

                </div>

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
                                <button class="ui blue fluid button" onclick="location.href = 'coin.jsp';">Go To Page</button>

                            </div>
                        </div>
                        <div class="ui card">
                            <div class="image">
                                <img src="images/card.jpeg">
                            </div>
                            <div class="content">
                                <a class="header">Card</a>
                                <div class="description">Probability of getting a card</div>
                                <br>
                                <button class="ui blue fluid button" onclick="location.href = 'card.jsp';">Go To Page</button>

                            </div>
                        </div>
                        <div class="ui card">
                            <div class="image">
                                <img src="images/marble.png">
                            </div>
                            <div class="content">
                                <a class="header">Marble</a>
                                <div class="description">Probability of getting a marble</div>
                                <br>
                                <button class="ui blue fluid button" onclick="location.href = 'marble.jsp';">Go To Page</button>

                            </div>
                        </div>
                    </div>

                <jsp:include page="navbar.html"></jsp:include>
                    <h1 class="ui horizontal divider header">COIN TOSS</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/coin.jpg">
                            </div>
                        </div>
                        <div class="ui eight wide column inverted" style = "color: white">

                            <script>
                                var chart = AmCharts.makeChart("chartdivCoin", {
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
                            <div id="chartdivCoin"></div>	
                            <br>
                            <button class="ui fluid blue  button" onclick="location.href = 'coin.jsp';">Try it out</button>

                        </div>
                    </div>
                    <br>
                    <br>
                    <h1 class="ui horizontal divider header">DECK OF CARDS</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/card.jpeg">
                            </div>
                        </div>
                        <div class="ui eight wide column inverted" style = "color: white">

                            <style>
                                #chartdivCard {
                                    width		: 100%;
                                    height		: 500px;
                                    font-size	: 11px;
                                }					
                            </style>

                            <!-- Resources -->

                            <!-- Chart code -->
                            <script>
                                var chart = AmCharts.makeChart("chartdivCard", {
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
                            <div id="chartdivCard"></div>	
                            <br>
                            <button class="ui fluid blue  button" onclick="location.href = 'card.jsp';">Try it out</button>
 
                        </div>
                    </div>
                    <br> <br>
                    <h1 class="ui horizontal divider header">GET MARBLES</h1>
                    <br>
                    <div class="ui grid">
                        <div class="ui eight wide column ">
                            <div class="ui fluid image">
                                <img src="images/marble.png">
                            </div>
                        </div>
                        <div class="ui eight wide column inverted" style = "color: white">

                            <style>
                                #chartdivCard {
                                    width		: 100%;
                                    height		: 500px;
                                    font-size	: 11px;
                                }					
                            </style>

                            <!-- Resources -->

                            <!-- Chart code -->
                            <script>
                                var chart = AmCharts.makeChart("chartdivMarble", {
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
                            <div id="chartdivMarble"></div>	
                            <br>
                            <button class="ui fluid blue  button" onclick="location.href = 'marble.jsp';">Try it out</button>

                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                </div>

                <script>
                    $('.card').hover(function () {
                        $(this).transition('bounce');
                    }, function () {
                    });
                </script>
            </div>

        <jsp:include page="footer.html"></jsp:include>

    </body>
</html>