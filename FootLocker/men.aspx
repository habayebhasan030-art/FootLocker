<%@ Page Title="Men - Foot Locker" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" Inherits="FootLocker.man" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;800&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f5f5f7;
            margin: 0;
            padding: 0;
        }

        /* HERO */
        .hero {
            width: 100%;
            height: 380px;
            background: url('https://images.pexels.com/photos/4496094/pexels-photo-4496094.jpeg') center/cover no-repeat;
            border-radius: 16px;
            display: flex;
            align-items: flex-end;
            padding: 45px;
            margin-bottom: 40px;
        }

        .hero h1 {
            font-size: 50px;
            font-weight: 800;
            color: #fff;
            text-shadow: 0 0 18px rgba(0,0,0,0.7);
            margin: 0;
        }

        /* GRID */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 35px;
            padding: 0 20px 50px 20px;
        }

        /* CARD */
        .card {
            background: white;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 6px 30px rgba(0,0,0,0.10);
            text-align: center;
            transition: .25s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 40px rgba(0,0,0,0.15);
        }

        .card img {
            width: 100%;
            height: 250px;
            object-fit: contain;
            transition: .3s;
        }

        .card:hover img {
            transform: scale(1.08);
        }

        .brand {
            font-size: 13px;
            color: #777;
            margin-top: 12px;
            text-transform: uppercase;
        }

        .name {
            font-size: 18px;
            font-weight: 600;
            margin-top: 4px;
        }

        .price {
            margin-top: 10px;
            font-size: 22px;
            font-weight: 700;
        }

        .btn {
            margin-top: 15px;
            display: block;
            padding: 12px;
            background: #000;
            color: white;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 600;
            transition: .3s;
        }

        .btn:hover {
            background: #e60000;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .hero {
                height: 250px;
                padding: 25px;
            }
            .hero h1 {
                font-size: 36px;
            }
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO -->
    <div class="hero">
        <h1>MEN COLLECTION</h1>
    </div>

    <!-- PRODUCTS -->
    <div class="grid">

        <!-- NIKE AIR MAX 270 -->
        <div class="card">
            <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/55f5df52-01d8-41cd-acf4-f2ecef740097/air-max-270-mens-shoes-KkLcGR.png" alt="Nike Air Max 270"/>
            <div class="brand">NIKE</div>
            <div class="name">Air Max 270</div>
            <div class="price">$160</div>
            <a href="#" class="btn">View Product</a>
        </div>

        <!-- ADIDAS ULTRABOOST -->
        <div class="card">
            <img src="https://assets.adidas.com/images/w_600,f_auto,q_auto/0291fbf508754d1a8e48aeca00ed3c69_9366/Ultraboost_22_Shoes_Blue_GX3060_01_standard.jpg" alt="Adidas Ultraboost 22"/>
            <div class="brand">ADIDAS</div>
            <div class="name">Ultraboost 22</div>
            <div class="price">$180</div>
            <a href="#" class="btn">View Product</a>
        </div>

        <!-- AIR JORDAN 1 RETRO -->
        <div class="card">
            <img src="https://static.nike.com/a/images/t_prod_ss/w_960,c_limit,f_auto/8532b8d2-3190-47a1-9692-5dfbcedea21f/air-jordan-1-high-og-chicago-release-date.jpg" alt="Air Jordan 1 Retro"/>
            <div class="brand">JORDAN</div>
            <div class="name">Air Jordan 1 Retro</div>
            <div class="price">$195</div>
            <a href="#" class="btn">View Product</a>
        </div>

        <!-- NEW BALANCE 550 -->
        <div class="card">
            <img src="https://nb.scene7.com/is/image/NB/m550sb1_nb_02_i?$pdpflexf2$" alt="New Balance 550 White"/>
            <div class="brand">NEW BALANCE</div>
            <div class="name">NB 550 White</div>
            <div class="price">$125</div>
            <a href="#" class="btn">View Product</a>
        </div>

        <!-- PUMA RS-X -->
        <div class="card">
            <img src="https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa/global/369666/22/sv01/fnd/PUMA-RS-X-Reinvention-Men.png" alt="Puma RS-X Reinvention"/>
            <div class="brand">PUMA</div>
            <div class="name">RS-X Reinvention</div>
            <div class="price">$140</div>
            <a href="#" class="btn">View Product</a>
        </div>

        <!-- NIKE AIR FORCE 1 -->
        <div class="card">
            <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4bfdfd9e-b75c-4020-a53f-3c84ad2e938a/air-force-1-07-mens-shoes-C3C6L8.png" alt="Nike Air Force 1 ’07"/>
            <div class="brand">NIKE</div>
            <div class="name">Air Force 1 ’07</div>
            <div class="price">$110</div>
            <a href="#" class="btn">View Product</a>
        </div>

    </div>

</asp:Content>




