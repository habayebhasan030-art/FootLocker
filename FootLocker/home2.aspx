<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HomePg1.aspx.cs" Inherits="FootLocker.HomePg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- HERO -->
  <section class="hero">
    <div class="hero-text">
      <h1>Step Into Style</h1>
      <p>Discover the latest sneaker drops and streetwear fits from Nike, Jordan, and Adidas.</p>
      <a href="#" class="btn">Shop Now</a>
    </div>
    <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1000&q=80" alt="Sneakers">
  </section>

  <!-- FEATURED PRODUCTS -->
  <section class="products">
    <h2>Featured Sneakers</h2>
    <div class="product-grid">
      <div class="product">
        <img  src="..\images\Screenshot 2025-11-19 104209.png" alt="Shoes1" />
        <h3>Nike Air Max 270</h3>
        <p>$150</p>
      </div>
      <div class="product">
        <img src="images/Screenshot%202025-11-25%20124133.png"alt="Yeezy Boost 350" />
        <h3>Adidas Yeezy Boost 350</h3>
        <p>$220</p>
      </div>
      <div class="product">
        <img src="images/Screenshot%202025-11-25%20124532.png" alt="Jordan 1"/>
        <h3>Air Jordan 1 Retro</h3>
        <p>$180</p>
      </div>
      <div class="product">
        <img src="images/Screenshot%202025-11-25%20125149.png" alt="Puma RS-X"/>
        <h3>Puma RS-X³ Puzzle</h3>
        <p>$130</p>
      </div>
    </div>
  </section>
</asp:Content>

