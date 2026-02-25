<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="FootLocker.product" %>

<!DOCTYPE html>
<html>
<head>
    <title>Foot Locker Products</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #0f0f0f;
            font-family: Arial, Helvetica, sans-serif;
        }

        .title {
            text-align: center;
            color: white;
            font-size: 40px;
            padding: 30px;
            letter-spacing: 3px;
        }

        .grid-container {
            width: 95%;
            margin: auto;
            padding-bottom: 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #1a1a1a;
            color: white;
        }

        th {
            background: linear-gradient(45deg, #ff0000, #ff4d4d);
            color: white;
            padding: 15px;
            font-size: 16px;
            text-transform: uppercase;
        }

        td {
            padding: 15px;
            text-align: center;
            font-size: 15px;
            border-bottom: 1px solid #333;
        }

        tr:nth-child(even) {
            background-color: #222;
        }

        tr:hover td {
            background-color: #ff0000;
            color: white;
        }

        .product-img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 10px;
            border: 2px solid #ff0000;
        }

        .description-text {
            max-width: 250px;
            display: inline-block;
        }

        .btn-cart {
            background-color: black;
            color: white;
            border: 2px solid #ff0000;
            padding: 8px 15px;
            cursor: pointer;
            transition: 0.3s;
            border-radius: 20px;
            font-weight: bold;
        }

        .btn-cart:hover {
            background-color: white;
            color: red;
        }
    </style>
</head>
<body>

<div class="title">FOOT LOCKER PRODUCTS</div>

<div class="grid-container">
    <table>
        <tr>
            <th>ID</th>
            <th>Product Image</th>
            <th>Product Name</th>
            <th>Brand</th>
            <th>Price ($)</th>
            <th>Description</th>
            <th>Action</th>
        </tr>

        <!-- 20 Products -->
        <tr>
            <td>1</td>
            <td><img class="product-img" src="images/airmax270.jpg" alt="Air Max 270"></td>
            <td>Air Max 270</td>
            <td>Nike</td>
            <td>150</td>
            <td class="description-text">Comfortable running shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>2</td>
            <td><img class="product-img" src="images/ultraboost.jpg" alt="UltraBoost"></td>
            <td>UltraBoost</td>
            <td>Adidas</td>
            <td>180</td>
            <td class="description-text">High performance running shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>3</td>
            <td><img class="product-img" src="images/classicleather.jpg" alt="Classic Leather"></td>
            <td>Classic Leather</td>
            <td>Reebok</td>
            <td>90</td>
            <td class="description-text">Retro casual sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>4</td>
            <td><img class="product-img" src="images/jordan1.jpg" alt="Jordan 1 Retro"></td>
            <td>Jordan 1 Retro</td>
            <td>Nike</td>
            <td>200</td>
            <td class="description-text">Iconic basketball shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>5</td>
            <td><img class="product-img" src="images/rsxbold.jpg" alt="RS-X Bold"></td>
            <td>RS-X Bold</td>
            <td>Puma</td>
            <td>120</td>
            <td class="description-text">Bold and stylish sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>6</td>
            <td><img class="product-img" src="images/chucktaylor.jpg" alt="Chuck Taylor All Star"></td>
            <td>Chuck Taylor All Star</td>
            <td>Converse</td>
            <td>60</td>
            <td class="description-text">Classic canvas shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>7</td>
            <td><img class="product-img" src="images/gelkayano27.jpg" alt="Gel-Kayano 27"></td>
            <td>Gel-Kayano 27</td>
            <td>Asics</td>
            <td>160</td>
            <td class="description-text">Premium running shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>8</td>
            <td><img class="product-img" src="images/vaporfly.jpg" alt="ZoomX Vaporfly"></td>
            <td>ZoomX Vaporfly</td>
            <td>Nike</td>
            <td>250</td>
            <td class="description-text">Elite marathon shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>9</td>
            <td><img class="product-img" src="images/airforce1.jpg" alt="Air Force 1"></td>
            <td>Air Force 1</td>
            <td>Nike</td>
            <td>120</td>
            <td class="description-text">Classic casual sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>10</td>
            <td><img class="product-img" src="images/superstar.jpg" alt="Superstar"></td>
            <td>Superstar</td>
            <td>Adidas</td>
            <td>100</td>
            <td class="description-text">Iconic shell-toe sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>11</td>
            <td><img class="product-img" src="images/clubc85.jpg" alt="Club C 85"></td>
            <td>Club C 85</td>
            <td>Reebok</td>
            <td>85</td>
            <td class="description-text">Retro lifestyle sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>12</td>
            <td><img class="product-img" src="images/blazermid.jpg" alt="Blazer Mid"></td>
            <td>Blazer Mid</td>
            <td>Nike</td>
            <td>110</td>
            <td class="description-text">Basketball-inspired sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>13</td>
            <td><img class="product-img" src="images/calisport.jpg" alt="Cali Sport"></td>
            <td>Cali Sport</td>
            <td>Puma</td>
            <td>95</td>
            <td class="description-text">Chunky retro sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>14</td>
            <td><img class="product-img" src="images/allstarlift.jpg" alt="All Star Lift"></td>
            <td>All Star Lift</td>
            <td>Converse</td>
            <td>70</td>
            <td class="description-text">Platform canvas shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>15</td>
            <td><img class="product-img" src="images/gt2000.jpg" alt="GT-2000"></td>
            <td>GT-2000</td>
            <td>Asics</td>
            <td>140</td>
            <td class="description-text">Stability running shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>16</td>
            <td><img class="product-img" src="images/reactinfinity.jpg" alt="React Infinity Run"></td>
            <td>React Infinity Run</td>
            <td>Nike</td>
            <td>160</td>
            <td class="description-text">Supportive running shoes.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>17</td>
            <td><img class="product-img" src="images/jordan4.jpg" alt="Air Jordan 4"></td>
            <td>Air Jordan 4</td>
            <td>Nike</td>
            <td>220</td>
            <td class="description-text">Classic basketball sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>18</td>
            <td><img class="product-img" src="images/zx2kboost.jpg" alt="ZX 2K Boost"></td>
            <td>ZX 2K Boost</td>
            <td>Adidas</td>
            <td>130</td>
            <td class="description-text">Retro-futuristic sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>19</td>
            <td><img class="product-img" src="images/clubcrevenge.jpg" alt="Club C Revenge"></td>
            <td>Club C Revenge</td>
            <td>Reebok</td>
            <td>95</td>
            <td class="description-text">Lifestyle sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>
        <tr>
            <td>20</td>
            <td><img class="product-img" src="images/rsdreamer.jpg" alt="RS-Dreamer"></td>
            <td>RS-Dreamer</td>
            <td>Puma</td>
            <td>150</td>
            <td class="description-text">Basketball sneakers.</td>
            <td><button class="btn-cart">Add To Cart</button></td>
        </tr>

    </table>
</div>

</body>
</html>