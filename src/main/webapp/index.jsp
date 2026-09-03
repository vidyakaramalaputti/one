<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Shop Smarter</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">

<style>

:root{
  --primary:#176b5b;
  --primary-dark:#0d4d42;
  --primary-light:#e8f5f1;

  --accent:#ff6b35;
  --accent-dark:#e95726;
  --accent-light:#fff0ea;

  --yellow:#f5b942;

  --bg:#f6f8f7;
  --white:#ffffff;

  --text:#182522;
  --text-soft:#68736f;
  --text-light:#8b9691;

  --border:#e3e9e6;

  --danger:#dc3545;
  --success:#21885c;

  --shadow-sm:0 2px 8px rgba(20,50,43,.06);
  --shadow:0 10px 30px rgba(20,50,43,.10);
  --shadow-lg:0 20px 50px rgba(20,50,43,.16);

  --radius-sm:8px;
  --radius:14px;
  --radius-lg:22px;

  --container:1240px;
}

*{
  box-sizing:border-box;
}

html{
  scroll-behavior:smooth;
}

body{
  margin:0;
  background:var(--bg);
  color:var(--text);
  font-family:'DM Sans',sans-serif;
  line-height:1.5;
}

body.no-scroll{
  overflow:hidden;
}

button,
input,
select{
  font:inherit;
}

button{
  cursor:pointer;
}

a{
  color:inherit;
  text-decoration:none;
}

img{
  max-width:100%;
  display:block;
}

.container{
  width:min(var(--container), calc(100% - 40px));
  margin:auto;
}

/* =========================
   TOP BAR
========================= */

.topbar{
  background:var(--primary-dark);
  color:#d9e9e5;
  font-size:13px;
}

.topbar-inner{
  min-height:38px;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:20px;
}

.topbar a{
  color:#fff;
  font-weight:600;
}

.topbar-right{
  display:flex;
  gap:20px;
}

/* =========================
   HEADER
========================= */

.header{
  background:#fff;
  border-bottom:1px solid var(--border);
  position:sticky;
  top:0;
  z-index:100;
}

.header-main{
  min-height:76px;
  display:flex;
  align-items:center;
  gap:25px;
}

.logo{
  font-family:'Plus Jakarta Sans',sans-serif;
  font-size:24px;
  font-weight:800;
  color:var(--primary-dark);
  white-space:nowrap;
}

.logo span{
  color:var(--accent);
}

.desktop-nav{
  display:flex;
  gap:4px;
}

.desktop-nav a{
  padding:10px 13px;
  color:var(--text-soft);
  font-size:14px;
  font-weight:600;
  border-radius:8px;
}

.desktop-nav a:hover,
.desktop-nav a.active{
  background:var(--primary-light);
  color:var(--primary-dark);
}

.header-search{
  margin-left:auto;
  width:330px;
  height:44px;
  display:flex;
  align-items:center;
  background:var(--bg);
  border:1px solid var(--border);
  border-radius:10px;
  overflow:hidden;
}

.header-search i{
  margin-left:14px;
  color:var(--text-light);
}

.header-search input{
  flex:1;
  border:0;
  outline:0;
  background:transparent;
  padding:0 12px;
  color:var(--text);
}

.header-search button{
  border:0;
  background:var(--primary);
  color:white;
  height:100%;
  width:48px;
}

.header-actions{
  display:flex;
  gap:6px;
}

.header-icon{
  position:relative;
  width:42px;
  height:42px;
  border:0;
  background:transparent;
  border-radius:50%;
  color:var(--text);
  font-size:18px;
}

.header-icon:hover{
  background:var(--bg);
}

.badge{
  position:absolute;
  top:1px;
  right:0;
  min-width:17px;
  height:17px;
  padding:0 4px;
  border-radius:50px;
  background:var(--accent);
  color:#fff;
  font-size:10px;
  font-weight:700;
  display:grid;
  place-items:center;
}

.mobile-menu-btn{
  display:none;
}

/* =========================
   MOBILE NAV
========================= */

.mobile-nav{
  display:none;
  background:#fff;
  border-top:1px solid var(--border);
  padding:10px 20px 15px;
}

.mobile-nav.open{
  display:flex;
  flex-direction:column;
}

.mobile-nav a{
  padding:13px 4px;
  border-bottom:1px solid var(--border);
  font-weight:600;
}

/* =========================
   HERO
========================= */

.hero{
  padding:35px 0 20px;
}

.hero-card{
  background:linear-gradient(120deg,#0c4038,#176b5b);
  min-height:430px;
  border-radius:var(--radius-lg);
  overflow:hidden;
  display:grid;
  grid-template-columns:1fr 1fr;
  position:relative;
}

.hero-content{
  padding:65px;
  display:flex;
  flex-direction:column;
  justify-content:center;
  color:white;
  position:relative;
  z-index:2;
}

.hero-label{
  color:#f8c85d;
  text-transform:uppercase;
  letter-spacing:1.5px;
  font-size:12px;
  font-weight:700;
  margin-bottom:14px;
}

.hero h1{
  font-family:'Plus Jakarta Sans',sans-serif;
  font-size:48px;
  line-height:1.1;
  margin:0;
  max-width:580px;
  letter-spacing:-2px;
}

.hero p{
  color:#cce0da;
  max-width:500px;
  margin:20px 0 28px;
  font-size:16px;
}

.hero-buttons{
  display:flex;
  gap:12px;
  flex-wrap:wrap;
}

.btn{
  min-height:46px;
  padding:0 20px;
  border-radius:9px;
  border:0;
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap:9px;
  font-weight:700;
  font-size:14px;
  transition:.2s;
}

.btn-primary{
  background:var(--accent);
  color:white;
}

.btn-primary:hover{
  background:var(--accent-dark);
  transform:translateY(-1px);
}

.btn-light{
  background:white;
  color:var(--primary-dark);
}

.btn-light:hover{
  background:#f3f7f5;
}

.btn-outline{
  background:transparent;
  color:var(--text);
  border:1px solid var(--border);
}

.btn-outline:hover{
  border-color:var(--primary);
  color:var(--primary);
}

.hero-image{
  position:relative;
  overflow:hidden;
}

.hero-image img{
  width:100%;
  height:100%;
  object-fit:cover;
}

.hero-image:after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(90deg,#0c4038 0%,transparent 35%);
}

/* =========================
   BENEFITS
========================= */

.benefits{
  background:white;
  border-bottom:1px solid var(--border);
}

.benefits-grid{
  display:grid;
  grid-template-columns:repeat(4,1fr);
}

.benefit{
  padding:23px 18px;
  display:flex;
  align-items:center;
  gap:14px;
  border-right:1px solid var(--border);
}

.benefit:last-child{
  border-right:0;
}

.benefit-icon{
  width:42px;
  height:42px;
  flex-shrink:0;
  border-radius:50%;
  display:grid;
  place-items:center;
  background:var(--primary-light);
  color:var(--primary);
  font-size:17px;
}

.benefit strong{
  display:block;
  font-size:14px;
}

.benefit span{
  font-size:12px;
  color:var(--text-soft);
}

/* =========================
   SECTION
========================= */

.section{
  padding:60px 0;
}

.section-header{
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:20px;
  margin-bottom:28px;
}

.section-title{
  font-family:'Plus Jakarta Sans',sans-serif;
  font-size:28px;
  margin:0;
  letter-spacing:-1px;
}

.section-subtitle{
  margin:7px 0 0;
  color:var(--text-soft);
  font-size:14px;
}

.view-all{
  color:var(--primary);
  font-weight:700;
  font-size:14px;
}

/* =========================
   CATEGORIES
========================= */

.categories{
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:14px;
}

.category{
  background:white;
  border:1px solid var(--border);
  border-radius:var(--radius);
  padding:20px 10px;
  text-align:center;
  transition:.2s;
  cursor:pointer;
}

.category:hover,
.category.active{
  border-color:var(--primary);
  box-shadow:var(--shadow-sm);
  transform:translateY(-2px);
}

.category-icon{
  width:58px;
  height:58px;
  margin:0 auto 11px;
  border-radius:50%;
  background:var(--primary-light);
  display:grid;
  place-items:center;
  color:var(--primary);
  font-size:23px;
}

.category.active .category-icon{
  background:var(--primary);
  color:white;
}

.category strong{
  display:block;
  font-size:13px;
}

.category span{
  font-size:11px;
  color:var(--text-soft);
}

/* =========================
   SHOP TOOLBAR
========================= */

.shop-toolbar{
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:15px;
  margin-bottom:20px;
  flex-wrap:wrap;
}

.result-count{
  color:var(--text-soft);
  font-size:14px;
}

.filters{
  display:flex;
  align-items:center;
  gap:10px;
}

.filter-select{
  height:40px;
  border:1px solid var(--border);
  border-radius:8px;
  background:white;
  padding:0 12px;
  color:var(--text);
}

/* =========================
   PRODUCTS
========================= */

.products{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}

.product{
  background:white;
  border:1px solid var(--border);
  border-radius:var(--radius);
  overflow:hidden;
  transition:.2s;
}

.product:hover{
  box-shadow:var(--shadow);
  transform:translateY(-3px);
}

.product-image{
  height:240px;
  background:#f1f4f2;
  position:relative;
  overflow:hidden;
}

.product-image img{
  width:100%;
  height:100%;
  object-fit:cover;
  transition:.3s;
}

.product:hover .product-image img{
  transform:scale(1.04);
}

.product-badge{
  position:absolute;
  top:12px;
  left:12px;
  padding:5px 9px;
  border-radius:6px;
  color:white;
  font-size:10px;
  font-weight:800;
  text-transform:uppercase;
}

.product-badge.sale{
  background:var(--accent);
}

.product-badge.new{
  background:var(--primary);
}

.product-wishlist{
  position:absolute;
  top:10px;
  right:10px;
  width:36px;
  height:36px;
  border:0;
  background:white;
  border-radius:50%;
  display:grid;
  place-items:center;
  color:var(--text-soft);
  box-shadow:var(--shadow-sm);
}

.product-wishlist.active{
  color:var(--accent);
}

.product-info{
  padding:16px;
}

.product-category{
  font-size:11px;
  color:var(--text-light);
  text-transform:uppercase;
  letter-spacing:.5px;
  font-weight:700;
}

.product-name{
  font-size:15px;
  font-weight:700;
  margin:5px 0;
}

.rating{
  display:flex;
  gap:5px;
  align-items:center;
  font-size:12px;
  color:var(--text-soft);
}

.stars{
  color:var(--yellow);
  letter-spacing:1px;
}

.price-row{
  display:flex;
  align-items:center;
  gap:8px;
  margin-top:10px;
}

.price{
  font-size:18px;
  font-weight:800;
  color:var(--primary-dark);
}

.old-price{
  color:var(--text-light);
  text-decoration:line-through;
  font-size:12px;
}

.product-actions{
  display:flex;
  gap:8px;
  padding:0 16px 16px;
}

.add-cart{
  flex:1;
  height:40px;
  border:0;
  border-radius:8px;
  background:var(--primary);
  color:white;
  font-weight:700;
  font-size:13px;
}

.add-cart:hover{
  background:var(--primary-dark);
}

.quick-view{
  width:42px;
  height:40px;
  border:1px solid var(--border);
  background:white;
  color:var(--text);
  border-radius:8px;
}

.quick-view:hover{
  border-color:var(--primary);
  color:var(--primary);
}

.empty{
  grid-column:1/-1;
  background:white;
  border:1px dashed var(--border);
  border-radius:var(--radius);
  padding:70px 20px;
  text-align:center;
  color:var(--text-soft);
}

/* =========================
   DEAL
========================= */

.deal-section{
  background:#fff;
}

.deal{
  display:grid;
  grid-template-columns:1fr 1fr;
  border-radius:var(--radius-lg);
  overflow:hidden;
  background:var(--accent-light);
}

.deal-image{
  min-height:370px;
}

.deal-image img{
  width:100%;
  height:100%;
  object-fit:cover;
}

.deal-content{
  padding:50px;
  display:flex;
  justify-content:center;
  flex-direction:column;
}

.deal-tag{
  color:var(--accent);
  font-weight:800;
  font-size:12px;
  letter-spacing:1px;
}

.deal h2{
  font-family:'Plus Jakarta Sans',sans-serif;
  font-size:34px;
  margin:10px 0;
}

.deal p{
  color:var(--text-soft);
  max-width:450px;
}

.deal-price{
  font-size:30px;
  font-weight:800;
  color:var(--primary-dark);
  margin:18px 0;
}

.deal-price del{
  font-size:16px;
  color:var(--text-light);
  margin-left:7px;
  font-weight:500;
}

.timer{
  display:flex;
  gap:8px;
  margin-bottom:22px;
}

.timer-box{
  width:58px;
  height:58px;
  border-radius:9px;
  background:white;
  display:grid;
  place-items:center;
  border:1px solid #f2d5ca;
}

.timer-box strong{
  font-size:17px;
}

.timer-box span{
  display:block;
  font-size:9px;
  color:var(--text-soft);
}

/* =========================
   REVIEWS
========================= */

.reviews{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:18px;
}

.review{
  background:white;
  border:1px solid var(--border);
  border-radius:var(--radius);
  padding:24px;
}

.review-stars{
  color:var(--yellow);
  margin-bottom:13px;
}

.review p{
  font-size:14px;
  color:var(--text-soft);
  margin:0 0 20px;
}

.reviewer{
  display:flex;
  align-items:center;
  gap:10px;
}

.reviewer img{
  width:42px;
  height:42px;
  object-fit:cover;
  border-radius:50%;
}

.reviewer strong{
  display:block;
  font-size:13px;
}

.reviewer span{
  font-size:11px;
  color:var(--text-light);
}

/* =========================
   NEWSLETTER
========================= */

.newsletter{
  background:var(--primary-dark);
  color:white;
  border-radius:var(--radius-lg);
  padding:45px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:30px;
}

.newsletter h2{
  font-family:'Plus Jakarta Sans',sans-serif;
  margin:0;
  font-size:26px;
}

.newsletter p{
  color:#bdd1cb;
  margin:7px 0 0;
  font-size:14px;
}

.newsletter-form{
  display:flex;
  gap:8px;
}

.newsletter-form input{
  height:46px;
  width:270px;
  border:0;
  outline:0;
  border-radius:8px;
  padding:0 15px;
}

/* =========================
   FOOTER
========================= */

.footer{
  background:#0b2924;
  color:#a9bbb5;
  padding:55px 0 25px;
}

.footer-grid{
  display:grid;
  grid-template-columns:1.5fr repeat(3,1fr);
  gap:40px;
}

.footer-logo{
  color:white;
  font-family:'Plus Jakarta Sans',sans-serif;
  font-size:22px;
  font-weight:800;
}

.footer-logo span{
  color:var(--accent);
}

.footer p{
  font-size:13px;
  max-width:300px;
}

.footer h4{
  color:white;
  font-size:14px;
  margin:0 0 14px;
}

.footer ul{
  list-style:none;
  padding:0;
  margin:0;
}

.footer li{
  margin-bottom:9px;
  font-size:13px;
}

.footer a:hover{
  color:white;
}

.footer-bottom{
  border-top:1px solid rgba(255,255,255,.1);
  margin-top:40px;
  padding-top:20px;
  text-align:center;
  font-size:12px;
}

/* =========================
   CART
========================= */

.overlay{
  position:fixed;
  inset:0;
  background:rgba(0,0,0,.45);
  opacity:0;
  visibility:hidden;
  transition:.25s;
  z-index:200;
}

.overlay.open{
  opacity:1;
  visibility:visible;
}

.cart{
  position:fixed;
  top:0;
  right:0;
  width:430px;
  max-width:100%;
  height:100%;
  background:white;
  z-index:210;
  transform:translateX(100%);
  transition:.3s;
  display:flex;
  flex-direction:column;
}

.cart.open{
  transform:translateX(0);
}

.cart-header{
  padding:20px;
  border-bottom:1px solid var(--border);
  display:flex;
  align-items:center;
  justify-content:space-between;
}

.cart-header h3{
  margin:0;
  font-family:'Plus Jakarta Sans',sans-serif;
}

.close{
  width:38px;
  height:38px;
  border:0;
  background:var(--bg);
  border-radius:50%;
}

.cart-items{
  flex:1;
  overflow:auto;
  padding:15px 20px;
}

.cart-item{
  display:flex;
  gap:12px;
  padding:15px 0;
  border-bottom:1px solid var(--border);
}

.cart-item img{
  width:72px;
  height:72px;
  border-radius:9px;
  object-fit:cover;
}

.cart-item-info{
  flex:1;
}

.cart-item-name{
  font-weight:700;
  font-size:14px;
}

.cart-item-price{
  font-size:13px;
  color:var(--text-soft);
  margin-top:3px;
}

.qty{
  display:flex;
  align-items:center;
  gap:9px;
  margin-top:9px;
}

.qty button{
  width:27px;
  height:27px;
  border:1px solid var(--border);
  background:white;
  border-radius:6px;
}

.remove{
  margin-left:auto;
  border:0;
  background:transparent;
  color:var(--danger);
  font-size:12px;
}

.cart-footer{
  padding:20px;
  border-top:1px solid var(--border);
}

.subtotal{
  display:flex;
  justify-content:space-between;
  margin-bottom:15px;
}

.subtotal strong{
  font-size:20px;
