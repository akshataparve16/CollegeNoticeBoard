<!DOCTYPE html>
<html>

<head>

    <title>Shivneri College - Notice Board</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }


        /* COLLEGE HEADER */

        .college-header {
            background-color: #1e3a5f;
            color: white;
            text-align: center;
            padding: 30px 20px;
        }


        .college-header .logo {
            width: 80px;
            height: 80px;
            background-color: white;
            color: #1e3a5f;
            border-radius: 50%;
            margin: 0 auto 15px auto;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 32px;
            font-weight: bold;
        }


        .college-name {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 8px;
        }


        .department {
            font-size: 17px;
            margin-bottom: 5px;
        }


        .university {
            font-size: 14px;
            opacity: 0.9;
        }


        /* NOTICE BOARD */

        .notice-heading {
            text-align: center;
            margin-top: 45px;
        }


        .notice-heading h1 {
            color: #1e3a5f;
            font-size: 32px;
            margin-bottom: 10px;
        }


        .notice-heading p {
            color: #666;
            font-size: 16px;
        }


        /* MAIN CONTAINER */

        .container {
            width: 80%;
            margin: 35px auto;
            display: flex;
            justify-content: center;
            gap: 30px;
        }


        /* CARDS */

        .card {
            background-color: white;
            width: 280px;
            padding: 30px;
            text-align: center;

            border-radius: 10px;

            box-shadow:
                0px 4px 12px rgba(0,0,0,0.12);
        }


        .card-icon {
            font-size: 45px;
            margin-bottom: 15px;
        }


        .card h2 {
            color: #1e3a5f;
            margin-bottom: 10px;
        }


        .card p {
            color: #666;
            font-size: 14px;
            margin-bottom: 25px;
        }


        /* BUTTONS */

        .btn {
            display: inline-block;

            background-color: #1e3a5f;
            color: white;

            text-decoration: none;

            padding: 12px 22px;

            border-radius: 5px;

            font-weight: bold;
        }


        .btn:hover {
            background-color: #162d4a;
        }


        /* FOOTER */

        .footer {
            background-color: #1e3a5f;
            color: white;

            text-align: center;

            padding: 18px;

            margin-top: 70px;

            font-size: 14px;
        }

    </style>

</head>


<body>


<!-- COLLEGE HEADER -->

<div class="college-header">

    <div class="logo">
        SC
    </div>


    <div class="college-name">
        Shivneri College of Arts, Commerce & Science
    </div>


    <div class="department">
        Department of Computer Applications
    </div>


    <div class="university">
        Affiliated to Savitribai Phule Pune University
    </div>

</div>



<!-- NOTICE BOARD HEADING -->

<div class="notice-heading">

    <h1>
        College Notice Board
    </h1>


    <p>
        Welcome to the Official College Notice Board
    </p>

</div>



<!-- MAIN CARDS -->

<div class="container">


    <!-- ADD NOTICE -->

    <div class="card">

        <div class="card-icon">
        </div>


        <h2>
            Add Notice
        </h2>


        <p>
            Create and publish a new college notice.
        </p>


        <a
            class="btn"
            href="addNotice.jsp"
        >
            Add New Notice
        </a>

    </div>



    <!-- VIEW NOTICE -->

    <div class="card">

        <div class="card-icon">
        </div>


        <h2>
            View Notices
        </h2>


        <p>
            View, edit and delete college notices.
        </p>


        <a
            class="btn"
            href="viewNotices.jsp"
        >
            View All Notices
        </a>

    </div>


</div>



<!-- FOOTER -->

<div class="footer">

    Shivneri College of Arts, Commerce & Science
    <br>
    Department of Computer Applications

</div>


</body>

</html>