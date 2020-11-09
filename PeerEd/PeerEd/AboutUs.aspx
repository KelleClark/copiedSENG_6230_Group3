<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="PeerEd.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
    <title>AboutUs</title>
    <style type="text/css">
        * {
            box-sizing: border-box;
        }

        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }

        [class*="col-"] {
            float: left;
            padding: 15px;
            border: 0px;
        }
        /* Header/logo Title */
        .pageHeader {
            padding: 80px;
            text-align: center;
            background: #8C2D3B;
            background: #e2e2e2;
            /*  min-height: 100%;
            background-image: url(logo.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;*/
        }

            /* Increase the font size of the heading */
            .pageHeader h1 {
                font-size: 40px;
                color: #bf2307;
            }

            .pageHeader h2 {
                font-size: 30px;
                color: #bf2307;
            }

        /* Style the top navigation bar */
        .navbar {
            overflow: hidden;
            background-color: #333;
        }

            /* Style the navigation bar */
            .navbar h2 {
                float: left;
                display: block;
                color: white;
                text-align: center;
                padding: 14px 20px;
                text-decoration: none;
            }

                /* Right-aligned navbar item */
                .navbar h2.right {
                    float: right;
                }

            .navbar a {
                float: left;
                display: block;
                color: white;
                text-align: center;
                padding: 14px 20px;
                text-decoration: none;
            }

        .navbar-default {
            background-image: -webkit-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -o-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#f8f8f8));
            background-image: linear-gradient(to bottom, #ffffff 0%, #f8f8f8 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff8f8f8', GradientType=0);
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
        }

            .navbar-default .navbar-nav > .open > a,
            .navbar-default .navbar-nav > .active > a {
                background-image: -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#dbdbdb), to(#e2e2e2));
                background-image: linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdbdbdb', endColorstr='#ffe2e2e2', GradientType=0);
                background-repeat: repeat-x;
                -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
                box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
            }

        .navbar-brand,
        .navbar-nav > li > a {
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.25);
        }
    </style>

</head>
<body>
    <div class="navbar navbar-fixed-top">
        <div class="row">
            <div class="navbar-header">
                <div class="col-3">
                    <h2><a class="navbar-brand" runat="server" href="StudentLand.aspx">PeerEd</a></h2>
                </div>
                <div class="col-6">

                </div>
                <div class="col-3">
                    <h2><a class="navbar-brand" runat="server" href="StudentLand.aspx">Home</a></h2>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-3">
                <img src="concept.jpg">
            </div>
            <div class="col-9">
                <h2>The Concept</h2>
                <p>
                    PeerEd is a website building on the necessity of distance education for all and the benefits of learning from peers.
                    The site allows students to upload educational videos that they have created and uploaded to YouTube. Unlike other
                    social media sites, PeerEd provides students with a sharing platform dedicated to concepts in the US math and computer science curriculumns for grades k-12.
                    This platform is centered on peer-to-peer teaching\learning.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <img src="learn.jpg">
            </div>
            <div class="col-9">
                <h2>Upload Your Own Learning Videos</h2>
                <p>
                    Students are able to upload videos of themselves teaching specific subjects/techniques to their digital audience of peers.  The videos are first
                    uploaded by the Student to their own YouTube Channel, and are then subject to regulations that the video be made for children.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <img src="watch.jpg">
            </div>
            <div class="col-9">
                <h2>Share Your Videos with Others</h2>
                <p>
                    As an Acadmic Advisor, you can share playlists of learning videos with others. Students can also interact with each other in real time or via comments, chat and posts/sharing. The idea is that content is more relatable when the creator is a peer. Learning may be more relatable if taught by a peer who can explain the topic in a way other students can understand. This is opposed to an adult attempting to explain topics to students, which may present a disconnect.  The platform would be similar to youtube, except all content would be reviewed by adults to ensure that it is appropriate. Accuracy and popularity would be measured by the students who can recommend the video to peers and vote the video up or down on key metrics.
                    PeerEd lets you Watch Videos, choosing peer made videos from a library.

                </p>
            </div>
        </div>
    </div>

</body>
</html>
