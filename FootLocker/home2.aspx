<%@ Page Title="FootLocker - Home" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HomePg1.aspx.cs" Inherits="FootLocker.HomePg1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* إعدادات الخلفية العامة */
        body {
            background-color: #0b0b0b;
            color: #ffffff;
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            margin: 0;
        }

        /* Hero Section - تصميم سينمائي */
        .hero {
            display: flex;
            align-items: center;
            justify-content: space-around;
            padding: 100px 5%;
            background: radial-gradient(circle at center, #2a0000 0%, #0b0b0b 70%);
            min-height: 450px;
            flex-wrap: wrap;
        }

        .hero-text {
            flex: 1;
            min-width: 300px;
            padding: 20px;
        }

        .hero-text h1 {
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            text-transform: uppercase;
            margin: 0;
            line-height: 0.9;
            color: #ffffff;
            text-shadow: 3px 3px 0px #ff0000;
            font-weight: 900;
        }

        .hero-text h1 span {
            color: #ff0000;
        }

        .hero-text p {
            font-size: 1.1rem;
            color: #aaa;
            margin: 25px 0;
            border-left: 3px solid #ff0000;
            padding-left: 15px;
        }

        .btn {
            display: inline-block;
            padding: 15px 45px;
            background: #ff0000;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            transition: 0.3s;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn:hover {
            background: #fff;
            color: #ff0000;
            transform: scale(1.05);
        }

        .hero-image-container {
            flex: 1;
            min-width: 300px;
            display: flex;
            justify-content: center;
        }

        .hero img {
            width: 100%;
            max-width: 500px;
            filter: drop-shadow(0 15px 30px rgba(255,0,0,0.3));
            animation: bounce 4s ease-in-out infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0) rotate(-5deg); }
            50% { transform: translateY(-20px) rotate(0deg); }
        }

        /* Products Section */
        .products {
            padding: 80px 5%;
            background: #0b0b0b;
        }

        .products h2 {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 50px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .products h2 span {
            color: #ff0000;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .product {
            background: #151515;
            padding: 25px;
            border-radius: 15px;
            text-align: center;
            border: 1px solid #222;
            transition: 0.4s;
            position: relative;
        }

        .product:hover {
            border-color: #ff0000;
            transform: translateY(-10px);
            box-shadow: 0 10px 40px rgba(255,0,0,0.15);
        }

        .product img, .product-item__secondary-image {
            width: 100%;
            height: 180px;
            object-fit: contain;
            margin-bottom: 20px;
            transition: 0.5s;
        }

        .product:hover img, .product:hover .product-item__secondary-image {
            transform: scale(1.15);
        }

        .product h3 {
            font-size: 1.1rem;
            margin: 10px 0;
            color: #eee;
        }

        .product p {
            color: #ff0000;
            font-size: 1.3rem;
            font-weight: 800;
            margin: 0;
        }

        /* شارة السعر */
        .price-tag {
            background: #ff0000;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            display: inline-block;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-text">
            <h1>Step Into <br /><span>Style</span></h1>
            <p>Discover the latest sneaker drops and streetwear fits from Nike, Jordan, and Adidas.</p>
            <a href="#" class="btn">Shop Now</a>
        </div>
        <div class="hero-image-container">
            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1000&q=80" alt="Sneakers">
        </div>
    </section>

    <!-- Products Section -->
    <section class="products">
        <h2>Featured <span>Sneakers</span></h2>
        <div class="product-grid">
            
            <!-- منتج 1 - Air Force 1 -->
            <div class="product">
                <img src="//footlocker.co.il/cdn/shop/files/Footlocker_AIR_FORCE_1_07_-_-3661076.jpg?v=1733842953&width=1000" 
                     alt="AIR FORCE 1 07 | FOOT LOCKER" 
                     class="product-item__secondary-image" />
                <h3>Nike Air Force 1 07</h3>
                <p>$120</p>
            </div>

            <!-- منتج 2 -->
            <div class="product">
                <img src="../images/Screenshot 2025-11-19 104209.png" alt="Nike Air Max 270" />
                <h3>Nike Air Max 270</h3>
                <p>$150</p>
            </div>

            <!-- منتج 3 -->
            <div class="product">
                <img src="images/Screenshot%202025-11-25%20124133.png" alt="Yeezy Boost 350" />
                <h3>Adidas Yeezy Boost 350</h3>
                <p>$220</p>
            </div>

            <!-- منتج 4 -->
            <div class="product">
                <img src="images/Screenshot%202025-11-25%20124532.png" alt="Air Jordan 1" />
                <h3>Air Jordan 1 Retro</h3>
                <p>$180</p>
            </div>

            <!-- منتج 5 -->
            <div class="product">
                <img src="images/Screenshot%202025-11-25%20125149.png" alt="Puma RS-X" />
                <h3>Puma RS-X³ Puzzle</h3>
                <p>$130</p>
            </div>

        </div>
    </section>

</asp:Content>
