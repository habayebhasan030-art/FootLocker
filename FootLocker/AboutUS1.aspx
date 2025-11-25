<%@ Page Title="About Us - FootLocker" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AboutUS1.aspx.cs" Inherits="FootLocker.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        /* ---------------- Hero Section ---------------- */
        .hero {
            width: 100%;
            height: 420px;
            background: url('https://images.footlocker.com/content/dam/final/final-homepage/2024/Global/FL_HP_Hero_Desktop.jpg') center/cover no-repeat;
            position: relative;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.55);
        }

        .hero-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            text-align: center;
            font-size: 45px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        /* --------------- About Section ---------------- */
        .about-container {
            width: 80%;
            margin: 60px auto;
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .about-container img {
            width: 450px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0,0,0,0.4);
        }

        .about-text {
            color: #111;
            font-size: 20px;
            line-height: 1.7;
        }

        .about-text h2 {
            color: #cc0000;
            font-weight: bold;
            font-size: 32px;
            margin-bottom: 15px;
        }

        /* --------------- Mission Cards ---------------- */
        .card-container {
            width: 80%;
            margin: 70px auto;
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .card {
            flex: 1;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 12px rgba(0,0,0,0.2);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 0 18px rgba(255,0,0,0.5);
        }

        .card img {
            width: 120px;
            height: 120px;
            margin-bottom: 15px;
        }

        .card h3 {
            font-size: 22px;
            color: #cc0000;
            font-weight: bold;
        }

        .card p {
            color: #333;
            font-size: 16px;
            margin-top: 10px;
        }

        /* --------------- Footer Section ---------------- */
        .footer-about {
            background: #111;
            color: white;
            padding: 40px;
            text-align: center;
            font-size: 18px;
            letter-spacing: 1px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- HERO SECTION -->
    <div class="hero">
        <div class="hero-overlay"></div>
        <div class="hero-text">FOOT LOCKER — SINCE 1974</div>
    </div>

    <!-- ABOUT US SECTION -->
    <div class="about-container">
        <img src="images/Screenshot%202025-11-19%20103012.png" alt="Foot Locker Store Image"/>

        <div class="about-text">
            <h2>About Foot Locker</h2>
            <p>
                Foot Locker is a global leader in sports footwear and apparel,  
                providing the world’s top brands including Nike, Adidas, Jordan, Puma and more.
                Since 1974, our mission has been to inspire and empower athletes and sneaker fans around the world.
            </p>
            <br />
            <p>
                With more than 3,000 stores worldwide, we deliver premium sneakers,  
                exclusive releases, and an unmatched shopping experience.
            </p>
        </div>
    </div>

    <!-- MISSION CARDS -->
    <div class="card-container">

        <div class="card">
            <img src="https://cdn-icons-png.flaticon.com/512/3209/3209893.png" alt="Vision Icon"/>
            <h3>Our Vision</h3>
            <p>To be the number one global destination for sneaker culture and sportswear.</p>
        </div>

        <div class="card">
            <img src="https://cdn-icons-png.flaticon.com/512/942/942748.png" alt="Mission Icon"/>
            <h3>Our Mission</h3>
            <p>Deliver premium products and an unforgettable customer experience.</p>
        </div>

        <div class="card">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Values Icon"/>
            <h3>Our Values</h3>
            <p>Passion, quality, authenticity, and dedication to sneaker enthusiasts.</p>
        </div>

    </div>

    <!-- FOOTER -->
    <div class="footer-about">
        Foot Locker © 2025 — Powered by Passion for Sneakers
    </div> 

</asp:Content>


