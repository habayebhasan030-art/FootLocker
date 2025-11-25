<%@ Page Title="Kids Collection" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Kids.aspx.cs" Inherits="FootLocker.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        .hero {
            background: url('https://images.unsplash.com/photo-1503342217505-b0a15ec3261c') center/cover no-repeat;
            height: 450px;
            display: flex;
            align-items: center;
            padding-left: 60px;
            color: white;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
            text-shadow: 1px 1px 6px #000;
        }

        .product-card img {
            height: 250px;
            object-fit: cover;
        }

        .product-card .card-title {
            font-weight: bold;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO SECTION -->
    <div class="hero mb-5">
        <div>
            <h1>Kids Collection</h1>
            <p class="lead">Fresh styles for little champions.</p>
            <a class="btn btn-light btn-lg" href="#">Shop Now</a>
        </div>
    </div>

    <!-- CATEGORIES -->
    <div class="container mb-5">
        <h2 class="mb-4 fw-bold">Categories</h2>
        <div class="row text-center">

            <!-- Shoes -->
            <div class="col-md-4 mb-3">
                <img src="https://images.unsplash.com/photo-1526304640581-d334cdbbf45e" class="img-fluid rounded shadow" />
                <h4 class="mt-2">Kids Shoes</h4>
            </div>

            <!-- Apparel -->
            <div class="col-md-4 mb-3">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f" class="img-fluid rounded shadow" />
                <h4 class="mt-2">Kids Apparel</h4>
            </div>

            <!-- Accessories -->
            <div class="col-md-4 mb-3">
                <img src="https://images.unsplash.com/photo-1583939003579-730e3918a45a" class="img-fluid rounded shadow" />
                <h4 class="mt-2">Kids Accessories</h4>
            </div>
        </div>
    </div>

    <!-- BEST SELLERS -->
    <div class="container mb-5">
        <h2 class="mb-4 fw-bold">Best Sellers</h2>
        <div class="row">

            <!-- Product 1 -->
            <div class="col-md-3 mb-4">
                <div class="card product-card shadow-sm">
                    <img src="images/Screenshot%202025-11-25%20130328.png"  class="card-img-top" />
                    <div class="card-body">
                        <h5 class="card-title">Kids Running Shoes</h5>
                        <p class="card-text">$49.99</p>
                        <a href="#" class="btn btn-dark w-100">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-md-3 mb-4">
                <div class="card product-card shadow-sm">
                    <img src="https://images.unsplash.com/photo-1520962918287-7448c2878f65" class="card-img-top" />
                    <div class="card-body">
                        <h5 class="card-title">Kids Hoodie Outfit</h5>
                        <p class="card-text">$39.00</p>
                        <a href="#" class="btn btn-dark w-100">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-md-3 mb-4">
                <div class="card product-card shadow-sm">
                    <img src="https://images.unsplash.com/photo-1528701800489-20be0c6e2c34" class="card-img-top" />
                    <div class="card-body">
                        <h5 class="card-title">Casual Kids Shoes</h5>
                        <p class="card-text">$34.99</p>
                        <a href="#" class="btn btn-dark w-100">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-md-3 mb-4">
                <div class="card product-card shadow-sm">
                    <img src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b" class="card-img-top" />
                    <div class="card-body">
                        <h5 class="card-title">Kids Jacket</h5>
                        <p class="card-text">$44.99</p>
                        <a href="#" class="btn btn-dark w-100">Add to Cart</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
