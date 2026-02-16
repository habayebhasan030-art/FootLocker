<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyMassegs.aspx.cs" Inherits="MessagingSystem.MyMassegs" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>My Massegs</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #0d0d0d;
            color: white;
        }

        .header {
            background: #000;
            padding: 25px;
            text-align: center;
            border-bottom: 3px solid #ff0000;
            box-shadow: 0 5px 20px rgba(255,0,0,0.3);
        }

        .header h1 {
            color: #ff1a1a;
            letter-spacing: 3px;
            font-size: 40px;
        }

        .container {
            width: 90%;
            max-width: 1100px;
            margin: 40px auto;
        }

        .message-card {
            background: #141414;
            border-left: 5px solid #ff0000;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 12px;
            transition: 0.3s ease;
            box-shadow: 0 0 20px rgba(0,0,0,0.6);
        }

        .message-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(255,0,0,0.5);
            background: #1c1c1c;
        }

        .top-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .sender {
            font-weight: 600;
            color: #ff4d4d;
        }

        .date {
            font-size: 13px;
            color: #888;
        }

        .subject {
            font-size: 18px;
            margin: 8px 0;
            font-weight: 500;
        }

        .body {
            font-size: 14px;
            color: #ccc;
        }

        .read {
            color: #00ff99;
        }

        .unread {
            color: #ff3333;
            font-weight: bold;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="header">
        <h1>My Massegs</h1>
    </div>

    <div class="container">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="message-card">

                    <div class="top-row">
                        <div class="sender">
                          ד
                        <div class="date">
                            <%# Eval("msgDate") %>
                        </div>
                    </div>

                    <div class="subject">
                        <%# Eval("msgSubject") %>
                    </div>

                    <div class="body">
                        <%# Eval("msgBody") %>
                    </div>

                    <div>
                        <%# Convert.ToBoolean(Eval("msgRead")) ? 
                            "<span class='read'>✔ Read</span>" : 
                            "<span class='unread'>● Unread</span>" %>
                    </div>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</form>
</body>
</html>
