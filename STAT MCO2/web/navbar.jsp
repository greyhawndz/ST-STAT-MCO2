<%-- 
    Document   : navbar
    Created on : Mar 26, 2017, 1:46:46 PM
    Author     : glenn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>

    .main.menu.fixed {
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

    .main.menu.fixed {
        box-shadow: 0px 8px 5px rgba(0, 0, 0, 0.2);
    }

</style>



<div id="mainmenu"
     class="ui large top fixed hidden four item menu main secondary pointing menu borderless  "
     style="visibility: hidden; z-index: 20;">

    <div class="ui container">
        <div href="Home.php" class="header item">
            <div class="ui header huge">MC02</div>
        </div>
        <a href="Home.php" class="item active "> Home </a> <a
            href="About.php" class="item"> Coin </a> <a href="MilkaMinute.php"
            class="item "> Card </a> <a href="News.php" class="item">
            Marble </a>
    </div>
</div>

<br> <br> <br>

<script>
 $('#mainmenu').visibility({
                    once: false,
                    onBottomPassed: function () {
                        $('.fixed.menu').transition('fade in');
                    },
                    onBottomPassedReverse: function () {
                        $('.fixed.menu').transition('fade out');
                    }
                });
            </script>