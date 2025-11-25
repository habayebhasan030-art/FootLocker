<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HomePg1.aspx.cs" Inherits="FootLocker.HomePg1" %>
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
        <img src="<img src="https://images/Screenshot%202025-11-19%20104209.png"/>
        <h3>Nike Air Max 270</h3>
        <p>$150</p>
      </div>
      <div class="product">
        <img src="https://images.unsplash.com/photo-1589187155479-11b7b45b13c8?auto=format&fit=crop&w=600&q=80" alt="Yeezy Boost 350">
        <h3>Adidas Yeezy Boost 350</h3>
        <p>$220</p>
      </div>
      <div class="product">
        <img src="https://images.unsplash.com/photo-1618354691541-2d55c5e7a2d2?auto=format&fit=crop&w=600&q=80" alt="Jordan 1">
        <h3>Air Jordan 1 Retro</h3>
        <p>$180</p>
      </div>
      <div class="product">
        <img src="https://images.unsplash.com/photo-1600185365483-26d7f5f8cfb9?auto=format&fit=crop&w=600&q=80" alt="Puma RS-X">
        <h3>Puma RS-X³ Puzzle</h3>
        <p>$130</p>
      </div>
    </div>
  </section>
</asp:Content>
