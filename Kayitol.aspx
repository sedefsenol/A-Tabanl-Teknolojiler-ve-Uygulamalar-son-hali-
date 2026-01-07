<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kayitol.aspx.cs" Inherits="Cinescope.Kayitol" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Kayıt Ol</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <style>

        .register-card { 
            background-color: #262626; 
             width: 50%;
            margin: 50px auto; 
            padding: 30px; 
            border-radius: 16px; 
            box-shadow: 0 0 25px rgba(0,0,0,0.4); 
        }
        .register-card h2 { font-size: 28px; text-align: center; margin-bottom: 30px; }
        .form-control { 
            background-color: #3a3a3a; 
            border: 1px solid #555; 
            color: #fff; 
            height: 48px; 
            font-size: 16px; 
        }
        .form-control:focus { 
            background-color: #3a3a3a; 
            color: #fff; 
            border-color: #999; 
            box-shadow: none; 
            outline: none; 
        }
        .btn-register { width: 100%; height: 48px; font-size: 18px; margin-top: 15px; font-weight: 600; }
        .text-danger { color: #ff4d4d !important; }
        .text-success { color: #4dff4d !important; }
        .text-center small a { color: #0d6efd; text-decoration: none; }
        .text-center small a:hover { text-decoration: underline; }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="anasayfa.aspx">
                    <img src="Gorsel/cinescope.png" alt="Logo">
                    <span class="brand-text">Cinescope</span>
                </a>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="Filmler.aspx">Filmler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Elestiriler.aspx">Eleştiriler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Listeler.aspx">Listeler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Mesajlar.aspx">Mesajlar</a></li>
                        <li class="nav-item"><a class="nav-link" href="Bildirim.aspx">Bildirim</a></li>
                        <li class="nav-item"><a class="nav-link" href="Hesap.aspx">Hesap</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        
        <div class="register-card">
            <h2>Kayıt Ol</h2>

            <div class="mb-3">
                <asp:TextBox ID="txtIsim" runat="server" CssClass="form-control" Placeholder="İsminizi ve soyisminizi girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="E-posta adresinizi girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control" Placeholder="Kullanıcı adınızı girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Şifrenizi girin"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:TextBox ID="txtSifreTekrar" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Şifre tekrar"></asp:TextBox>
            </div>

            <asp:Button ID="btnKayitOl" runat="server" Text="Kayıt Ol" CssClass="btn btn-primary btn-register" OnClick="btnKayitOl_Click" />

            <asp:Label ID="lblMesaj" runat="server" CssClass="text-danger mt-3 d-block text-center"></asp:Label>

            <div class="text-center mt-3">
                <small>Zaten hesabın var mı? <a href="Girisyap.aspx">Giriş Yap</a></small>
            </div>
        </div>

       
        <div class="footer-wrapper">
     <footer class="footer">
         <div class="footer-left">
             <h2 class="logo">CineScope</h2>
             <p>Film keşfet, eleştirini paylaş.</p>
         </div>
         <div class="footer-section">
             <h3>Hakkımızda</h3>
             <a href="#">Hakkımızda</a>
             <a href="#">İletişim</a>
             <a href="#">Gizlilik Politikası</a>
         </div>
         <div class="footer-section">
             <h3>Bizi Takip Edin</h3>
             <a href="#">Instagram</a>
             <a href="#">Twitter</a>
             <a href="#">YouTube</a>
         </div>
     </footer>
     <div class="footer-bottom">
         © 2025 CineScope — Tüm Hakları Saklıdır.
     </div>
 </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
