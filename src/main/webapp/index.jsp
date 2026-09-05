<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Shop smarter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
  :root{
    --ink:#16241F;
    --ink-soft:#4B5750;
    --bg:#F1F3EF;
    --card:#FFFFFF;
    --line:#DEE2DA;
    --teal:#123832;
    --teal-dark:#0C2622;
    --clay:#C1502E;
    --clay-dark:#A03F22;
    --gold:#C89B3C;
    --focus:#0B6E62;
    --radius-s:6px;
    --radius-m:10px;
    --container:1240px;
  }
  *{box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    margin:0;
    background:var(--bg);
    color:var(--ink);
    font-family:'Inter',system-ui,sans-serif;
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  h1,h2,h3,h4{
    font-family:'Fraunces',serif;
    color:var(--teal-dark);
    margin:0;
    font-weight:600;
    letter-spacing:-0.01em;
  }
  a{color:inherit;text-decoration:none}
  img{max-width:100%;display:block}
  button{font-family:inherit;cursor:pointer}
  .container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}
  :focus-visible{outline:3px solid var(--focus);outline-offset:2px;border-radius:4px}
  .visually-hidden{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0 0 0 0);white-space:nowrap}
  .skip-link{position:absolute;left:-999px;top:0;background:var(--teal);color:#fff;padding:12px 18px;border-radius:0 0 8px 0;z-index:100}
  .skip-link:focus{left:0}

  /* ---------- Top utility bar ---------- */
  .utility-bar{background:var(--teal-dark);color:#EDEFEA;font-size:13px}
  .utility-bar .container{display:flex;justify-content:space-between;align-items:center;height:36px;flex-wrap:wrap;gap:6px}
  .utility-bar a:hover{color:var(--gold)}

  /* ---------- Header ---------- */
  header.site{position:sticky;top:0;z-index:50;background:var(--card);border-bottom:1px solid var(--line)}
  .header-row{display:flex;align-items:center;gap:20px;padding:16px 0}
  .brand{display:flex;align-items:center;gap:10px;font-family:'Fraunces',serif;font-weight:700;font-size:22px;color:var(--teal-dark);flex-shrink:0}
  .brand .dot{color:var(--clay)}
  nav.primary-nav{display:flex;gap:4px;flex:1}
  nav.primary-nav a{padding:9px 12px;border-radius:var(--radius-s);font-weight:500;font-size:15px;color:var(--ink-soft)}
  nav.primary-nav a:hover, nav.primary-nav a.active{background:var(--bg);color:var(--teal-dark)}
  .header-tools{display:flex;align-items:center;gap:10px}

  .search-form{display:flex;align-items:center;background:var(--bg);border:1px solid var(--line);border-radius:999px;padding:4px 6px 4px 16px;min-width:260px}
  .search-form input{border:0;background:transparent;outline:none;flex:1;font-size:14px;color:var(--ink);font-family:inherit}
  .search-form button{background:var(--teal);color:#fff;border:0;width:34px;height:34px;border-radius:50%;display:grid;place-items:center;flex-shrink:0}
  .search-form button:hover{background:var(--teal-dark)}

  .icon-btn{background:transparent;border:0;color:var(--ink);font-size:18px;width:38px;height:38px;border-radius:50%;display:grid;place-items:center;position:relative}
  .icon-btn:hover{background:var(--bg)}
  .cart-badge{position:absolute;top:2px;right:2px;background:var(--clay);color:#fff;font-size:10px;font-weight:700;min-width:16px;height:16px;padding:0 3px;border-radius:999px;display:grid;place-items:center;font-family:'Inter',sans-serif}
  .menu-toggle{display:none}

  /* ---------- Hero: editorial, left-aligned, asymmetric ---------- */
  .hero{background:var(--teal-dark);color:#fff;padding:64px 0}
  .hero .container{display:grid;grid-template-columns:1.1fr 0.9fr;gap:48px;align-items:center}
  .hero-eyebrow{font-size:14px;color:var(--gold);font-weight:600;margin-bottom:14px}
  .hero h1{font-size:44px;line-height:1.08;color:#fff;max-width:15ch}
  .hero p{color:#C9D3CD;max-width:46ch;margin:18px 0 28px;font-size:16px}
  .hero-actions{display:flex;gap:12px;flex-wrap:wrap}
  .btn{display:inline-flex;align-items:center;gap:8px;padding:12px 22px;border-radius:var(--radius-s);font-weight:600;font-size:15px;border:1px solid transparent}
  .btn-clay{background:var(--clay);color:#fff}
  .btn-clay:hover{background:var(--clay-dark)}
  .btn-outline{background:transparent;color:#fff;border-color:rgba(255,255,255,.4)}
  .btn-outline:hover{border-color:#fff}
  .btn-teal{background:var(--teal);color:#fff}
  .btn-teal:hover{background:var(--teal-dark)}
  .hero-figure{position:relative;border-radius:var(--radius-m);overflow:hidden;aspect-ratio:4/3}
  .hero-figure img{width:100%;height:100%;object-fit:cover}
  .hero-figure .tag{position:absolute;left:16px;bottom:16px;background:#fff;color:var(--teal-dark);padding:10px 14px;border-radius:var(--radius-s);font-weight:700;font-size:14px}

  /* ---------- Section shell ---------- */
  .section{padding:56px 0}
  .section-head{display:flex;justify-content:space-between;align-items:flex-end;gap:16px;margin-bottom:26px;flex-wrap:wrap}
  .section-head h2{font-size:28px}
  .section-head p{color:var(--ink-soft);margin-top:6px;font-size:15px}

  /* ---------- Category chips (not icon cards) ---------- */
  .chip-row{display:flex;gap:10px;flex-wrap:wrap}
  .chip{display:inline-flex;align-items:center;gap:8px;padding:10px 16px;border-radius:999px;background:var(--card);border:1px solid var(--line);font-weight:500;font-size:14px;color:var(--ink)}
  .chip:hover{border-color:var(--teal)}
  .chip.active{background:var(--teal);border-color:var(--teal);color:#fff}
  .chip .fa{color:inherit;opacity:.8}

  /* ---------- Toolbar: sort + count + view ---------- */
  .toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin:22px 0 18px;flex-wrap:wrap}
  .result-count{font-size:14px;color:var(--ink-soft)}
  .sort-select{display:flex;align-items:center;gap:8px;font-size:14px}
  .sort-select select{border:1px solid var(--line);background:var(--card);padding:8px 10px;border-radius:var(--radius-s);font-family:inherit;font-size:14px;color:var(--ink)}

  /* ---------- Products ---------- */
  .grid{display:grid;gap:20px}
  .products{grid-template-columns:repeat(4,1fr)}
  .product{background:var(--card);border:1px solid var(--line);border-radius:var(--radius-m);overflow:hidden;display:flex;flex-direction:column;transition:box-shadow .15s ease,transform .15s ease}
  .product:hover{box-shadow:0 12px 28px rgba(18,56,50,.12);transform:translateY(-2px)}
  .product-media{position:relative;aspect-ratio:1/1;background:#EDEFEA}
  .product-media img{width:100%;height:100%;object-fit:cover}
  .product-badge{position:absolute;top:10px;left:10px;padding:5px 9px;border-radius:6px;font-size:11px;font-weight:700;color:#fff}
  .badge-new{background:var(--teal)}
  .badge-sale{background:var(--clay)}
  .wish-toggle{position:absolute;top:10px;right:10px;background:#fff;border:0;width:32px;height:32px;border-radius:50%;display:grid;place-items:center;color:var(--ink-soft)}
  .wish-toggle.active{color:var(--clay)}
  .wish-toggle:hover{color:var(--clay)}
  .product-body{padding:14px 16px 4px;display:flex;flex-direction:column;gap:6px;flex:1}
  .product-cat{font-size:12px;color:var(--ink-soft);text-transform:capitalize}
  .product-title{font-size:15px;font-weight:600;color:var(--ink)}
  .product-rating{font-size:12.5px;color:var(--ink-soft);display:flex;align-items:center;gap:5px}
  .product-rating .stars{color:var(--gold)}
  .price-row{display:flex;align-items:baseline;gap:8px;margin-top:2px}
  .price{font-weight:700;font-size:16px;color:var(--teal-dark)}
  .old-price{font-size:13px;color:var(--ink-soft);text-decoration:line-through}
  .product-footer{padding:12px 16px 16px}
  .add-btn{width:100%;background:var(--teal);color:#fff;border:0;padding:11px;border-radius:var(--radius-s);font-weight:600;font-size:14px;display:flex;align-items:center;justify-content:center;gap:8px}
  .add-btn:hover{background:var(--teal-dark)}
  .add-btn[data-added="true"]{background:#2E7D5B}
  .empty-state{grid-column:1/-1;text-align:center;padding:48px 20px;color:var(--ink-soft)}
  .empty-state .fa{font-size:28px;margin-bottom:10px;color:var(--teal)}
  .empty-state button{margin-top:14px}

  /* ---------- Deal banner ---------- */
  .deal{background:var(--card);border:1px solid var(--line);border-radius:var(--radius-m);display:grid;grid-template-columns:0.9fr 1.1fr;overflow:hidden}
  .deal-media{position:relative;background:#EDEFEA}
  .deal-media img{width:100%;height:100%;object-fit:cover;min-height:300px}
  .deal-content{padding:36px}
  .deal-eyebrow{color:var(--clay);font-weight:700;font-size:13px;margin-bottom:8px}
  .deal-content h3{font-size:26px;margin-bottom:8px}
  .deal-content p.muted{color:var(--ink-soft);margin:0 0 20px}
  .timer{display:flex;gap:10px;margin-bottom:22px}
  .time-box{background:var(--bg);border:1px solid var(--line);padding:10px 4px;border-radius:var(--radius-s);min-width:64px;text-align:center}
  .time-box .num{font-family:'Fraunces',serif;font-size:20px;font-weight:700;color:var(--teal-dark);display:block}
  .time-box .label{font-size:11px;color:var(--ink-soft)}
  .deal-price-row{display:flex;align-items:center;gap:12px;margin-bottom:6px}
  .deal-price{font-family:'Fraunces',serif;font-size:28px;font-weight:700;color:var(--teal-dark)}
  .stock-note{font-size:13.5px;color:var(--ink-soft);margin:0 0 18px}
  .stock-note strong{color:var(--clay)}

  /* ---------- Testimonials ---------- */
  .testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
  .testimonial{background:var(--card);border:1px solid var(--line);border-radius:var(--radius-m);padding:22px}
  .testimonial .stars{color:var(--gold);margin-bottom:10px;font-size:14px}
  .testimonial p{font-size:14.5px;color:var(--ink);margin:0 0 16px}
  .t-person{display:flex;align-items:center;gap:10px}
  .t-person img{width:38px;height:38px;border-radius:50%;object-fit:cover}
  .t-name{font-weight:600;font-size:14px}
  .t-role{font-size:12.5px;color:var(--ink-soft)}

  /* ---------- Newsletter ---------- */
  .newsletter{background:var(--teal-dark);border-radius:var(--radius-m);padding:44px;text-align:left;color:#fff;display:flex;justify-content:space-between;align-items:center;gap:24px;flex-wrap:wrap}
  .newsletter h3{color:#fff;font-size:24px}
  .newsletter p{color:#C9D3CD;margin:6px 0 0;font-size:14.5px}
  .newsletter-form{display:flex;gap:8px;flex-wrap:wrap}
  .newsletter-form input{padding:12px 16px;border-radius:999px;border:0;width:260px;font-family:inherit;font-size:14px}
  .form-msg{width:100%;margin-top:10px;font-size:13.5px}

  /* ---------- Footer ---------- */
  footer.site{margin-top:24px;background:var(--teal-dark);color:#C9D3CD;padding:44px 0 24px;font-size:14px}
  .footer-grid{display:grid;grid-template-columns:1.4fr 1fr 1fr 1fr;gap:32px}
  .footer-grid h5{color:#fff;font-family:'Inter',sans-serif;font-size:14px;margin:0 0 12px;font-weight:600}
  .footer-grid ul{list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:9px}
  .footer-grid a:hover{color:#fff}
  .footer-social{display:flex;gap:10px;margin-top:16px}
  .footer-social a{width:34px;height:34px;border-radius:50%;background:rgba(255,255,255,.08);display:grid;place-items:center}
  .footer-social a:hover{background:rgba(255,255,255,.18)}
  .footer-bottom{text-align:center;margin-top:36px;padding-top:20px;border-top:1px solid rgba(255,255,255,.12);font-size:13px;color:#9BAAA2}

  /* ---------- Cart drawer ---------- */
  .overlay{position:fixed;inset:0;background:rgba(12,38,34,.4);opacity:0;pointer-events:none;transition:opacity .2s ease;z-index:60}
  .overlay.open{opacity:1;pointer-events:auto}
  .cart-drawer{position:fixed;top:0;right:0;height:100%;width:400px;max-width:92vw;background:#fff;z-index:70;transform:translateX(100%);transition:transform .25s ease;display:flex;flex-direction:column;box-shadow:-8px 0 30px rgba(0,0,0,.15)}
  .cart-drawer.open{transform:translateX(0)}
  .cart-head{display:flex;justify-content:space-between;align-items:center;padding:20px;border-bottom:1px solid var(--line)}
  .cart-head h3{font-size:19px}
  .cart-close{background:transparent;border:0;font-size:20px;color:var(--ink-soft);width:36px;height:36px;border-radius:50%}
  .cart-close:hover{background:var(--bg)}
  .cart-items{flex:1;overflow-y:auto;padding:14px 20px}
  .cart-item{display:flex;gap:12px;padding:14px 0;border-bottom:1px solid var(--line)}
  .cart-item img{width:64px;height:64px;border-radius:8px;object-fit:cover;flex-shrink:0}
  .cart-item-info{flex:1;min-width:0}
  .cart-item-title{font-size:14px;font-weight:600;margin-bottom:2px}
  .cart-item-price{font-size:13px;color:var(--ink-soft)}
  .qty-row{display:flex;align-items:center;gap:10px;margin-top:8px}
  .qty-btn{width:26px;height:26px;border-radius:6px;border:1px solid var(--line);background:var(--bg);font-size:14px;line-height:1;display:grid;place-items:center;color:var(--ink)}
  .qty-btn:hover{border-color:var(--teal)}
  .qty-val{font-size:14px;font-weight:600;min-width:16px;text-align:center}
  .remove-btn{margin-left:auto;background:transparent;border:0;color:var(--ink-soft);font-size:13px;text-decoration:underline}
  .remove-btn:hover{color:var(--clay)}
  .cart-empty{padding:40px 20px;text-align:center;color:var(--ink-soft)}
  .cart-empty .fa{font-size:30px;color:var(--teal);margin-bottom:12px}
  .cart-foot{padding:18px 20px;border-top:1px solid var(--line)}
  .cart-total-row{display:flex;justify-content:space-between;font-size:15px;margin-bottom:14px}
  .cart-total-row strong{font-family:'Fraunces',serif;font-size:19px;color:var(--teal-dark)}
  .cart-foot .btn{width:100%;justify-content:center}

  /* ---------- Toast ---------- */
  .toast{position:fixed;bottom:24px;left:50%;transform:translateX(-50%) translateY(20px);background:var(--teal-dark);color:#fff;padding:13px 22px;border-radius:999px;font-size:14px;display:flex;align-items:center;gap:10px;opacity:0;pointer-events:none;transition:all .25s ease;z-index:80}
  .toast.show{opacity:1;transform:translateX(-50%) translateY(0)}
  .toast .fa{color:#7FD9A0}

  /* ---------- Mobile ---------- */
  @media (max-width:1080px){
    .products{grid-template-columns:repeat(3,1fr)}
    .hero .container{grid-template-columns:1fr}
    .hero-figure{order:-1}
    .footer-grid{grid-template-columns:1fr 1fr}
  }
  @media (max-width:860px){
    nav.primary-nav{display:none}
    .menu-toggle{display:grid}
    .search-form{min-width:0;flex:1}
    .products{grid-template-columns:repeat(2,1fr)}
    .deal{grid-template-columns:1fr}
    .deal-media img{min-height:200px}
    .testimonials{grid-template-columns:1fr}
    .newsletter{flex-direction:column;align-items:flex-start}
  }
  @media (max-width:540px){
    .header-row{flex-wrap:wrap}
    .search-form{order:3;width:100%}
    .hero h1{font-size:32px}
    .products{grid-template-columns:1fr 1fr}
    .cart-drawer{width:100%}
  }
  .mobile-nav{display:none;flex-direction:column;background:#fff;border-top:1px solid var(--line);padding:10px 24px 16px}
  .mobile-nav.open{display:flex}
  .mobile-nav a{padding:10px 0;font-weight:500;border-bottom:1px solid var(--line)}
  .mobile-nav a:last-child{border-bottom:0}

  @media (prefers-reduced-motion: reduce){
    *{animation-duration:0.001ms !important;transition-duration:0.001ms !important}
  }
</style>
</head>
<body>
<a href="#main" class="skip-link">Skip to content</a>

<div class="utility-bar">
  <div class="container">
    <span>Free shipping on orders over $75</span>
    <span><a href="#">Track order</a> &nbsp;·&nbsp; <a href="#">Help</a></span>
  </div>
</div>

<header class="site">
  <div class="container header-row">
    <button class="icon-btn menu-toggle" id="menuToggle" aria-label="Open menu" aria-expanded="false">
      <i class="fas fa-bars"></i>
    </button>
    <a class="brand" href="#">Nexus<span class="dot">Shop</span></a>

    <nav class="primary-nav" aria-label="Primary">
      <a href="#" class="active">Home</a>
      <a href="#shop">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
      <a href="#about">About</a>
    </nav>

    <form class="search-form" role="search" id="searchForm">
      <label for="searchInput" class="visually-hidden">Search products</label>
      <input id="searchInput" type="search" placeholder="Search for anything…" autocomplete="off">
      <button type="submit" aria-label="Search"><i class="fas fa-search"></i></button>
    </form>

    <div class="header-tools">
      <button class="icon-btn" title="Wishlist" id="wishlistBtn" aria-label="Wishlist">
        <i class="far fa-heart"></i>
        <span class="cart-badge" id="wishCount" hidden>0</span>
      </button>
      <button class="icon-btn" title="Open cart" id="cartOpenBtn" aria-haspopup="dialog" aria-label="Open cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount" hidden>0</span>
      </button>
    </div>
  </div>
  <nav class="mobile-nav" id="mobileNav" aria-label="Mobile">
    <a href="#">Home</a>
    <a href="#shop">Shop</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>
    <a href="#about">About</a>
  </nav>
</header>

<main id="main">
  <!-- Hero -->
  <section class="hero">
    <div class="container">
      <div>
        <div class="hero-eyebrow">New arrivals every week</div>
        <h1>Find the things you'll actually reach for</h1>
        <p>Tech, style and everyday essentials, chosen for quality rather than trend. Free returns for 30 days on everything.</p>
        <div class="hero-actions">
          <button class="btn btn-clay" id="shopNowBtn">Start shopping <i class="fas fa-arrow-right"></i></button>
          <a class="btn btn-outline" href="#deals">See today's deals</a>
        </div>
      </div>
      <div class="hero-figure">
        <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=900&q=80" alt="Curated products laid out on a table">
        <div class="tag">1,200+ items in stock</div>
      </div>
    </div>
  </section>

  <!-- Shop -->
  <section class="section container" id="shop" aria-labelledby="shop-title">
    <div class="section-head">
      <div>
        <h2 id="shop-title">Shop by category</h2>
        <p>Tap a category to filter, or search above.</p>
      </div>
    </div>

    <div class="chip-row" id="categoryChips" role="group" aria-label="Filter by category"></div>

    <div class="toolbar">
      <p class="result-count" id="resultCount" aria-live="polite"></p>
      <label class="sort-select">
        Sort by
        <select id="sortSelect">
          <option value="popular">Most popular</option>
          <option value="price-asc">Price: low to high</option>
          <option value="price-desc">Price: high to low</option>
          <option value="rating">Highest rated</option>
        </select>
      </label>
    </div>

    <div class="grid products" id="productsGrid" aria-live="polite"></div>
  </section>

  <!-- Deal -->
  <section id="deals" class="section container" aria-labelledby="deals-title">
    <div class="section-head">
      <div>
        <h2 id="deals-title">Today's featured deal</h2>
        <p>One great offer, refreshed daily.</p>
      </div>
    </div>

    <div class="deal">
      <div class="deal-media">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="MacBook Air on a desk">
      </div>
      <div class="deal-content">
        <div class="deal-eyebrow">FLASH SALE · ENDS SOON</div>
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light and fast enough for everything from spreadsheets to photo edits.</p>

        <div class="timer" aria-label="Time left on this deal">
          <div class="time-box"><span class="num" id="dealDays">0</span><span class="label">Days</span></div>
          <div class="time-box"><span class="num" id="dealHours">00</span><span class="label">Hours</span></div>
          <div class="time-box"><span class="num" id="dealMinutes">00</span><span class="label">Mins</span></div>
          <div class="time-box"><span class="num" id="dealSeconds">00</span><span class="label">Secs</span></div>
        </div>

        <div class="deal-price-row">
          <span class="deal-price">$999</span>
          <span class="old-price">$1,199</span>
        </div>
        <p class="stock-note">Only <strong>12 left</strong> at this price.</p>
        <button class="btn btn-teal" id="buyDealBtn"><i class="fas fa-shopping-bag"></i> Add to cart — $999</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section id="reviews" class="section container" aria-labelledby="review-title">
    <div class="section-head">
      <div>
        <h2 id="review-title">What customers say</h2>
        <p>Real reviews from verified buyers.</p>
      </div>
    </div>
    <div class="testimonials">
      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>Fast shipping and the return process was painless when a size didn't work out.</p>
        <div class="t-person">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="">
          <div><div class="t-name">Ava Martin</div><div class="t-role">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="stars">★★★★☆</div>
        <p>Good selection and the checkout was quick. I'll shop here again.</p>
        <div class="t-person">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="">
          <div><div class="t-name">Michael Lee</div><div class="t-role">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>The product pages actually match what arrives. Refreshing, honestly.</p>
        <div class="t-person">
          <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=80&q=80" alt="">
          <div><div class="t-name">Priya Nair</div><div class="t-role">Verified buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container" id="about" aria-labelledby="news-title">
    <div class="newsletter">
      <div>
        <h3 id="news-title">Get the good stuff first</h3>
        <p>New arrivals and real discounts — no spam, unsubscribe anytime.</p>
      </div>
      <form id="newsletterForm" novalidate>
        <div style="display:flex;gap:8px;flex-wrap:wrap">
          <label for="newsletterEmail" class="visually-hidden">Email address</label>
          <input id="newsletterEmail" type="email" placeholder="you@example.com" required>
          <button class="btn btn-clay" type="submit">Subscribe</button>
        </div>
        <div id="newsletterMsg" class="form-msg" role="status" hidden></div>
      </form>
    </div>
  </section>
</main>

<footer class="site">
  <div class="container footer-grid">
    <div>
      <div class="brand" style="color:#fff;margin-bottom:10px">Nexus<span class="dot">Shop</span></div>
      <p style="max-width:32ch">A modern storefront demo focused on being genuinely easy to browse, filter and buy from.</p>
      <div class="footer-social">
        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
      </div>
    </div>
    <div>
      <h5>Shop</h5>
      <ul><li><a href="#shop">All products</a></li><li><a href="#deals">Deals</a></li><li><a href="#">Gift cards</a></li></ul>
    </div>
    <div>
      <h5>Support</h5>
      <ul><li><a href="#">Help center</a></li><li><a href="#">Shipping & returns</a></li><li><a href="#">Contact us</a></li></ul>
    </div>
    <div>
      <h5>Company</h5>
      <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul>
    </div>
  </div>
  <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<!-- Cart drawer -->
<div class="overlay" id="overlay"></div>
<aside class="cart-drawer" id="cartDrawer" role="dialog" aria-label="Shopping cart" aria-modal="true">
  <div class="cart-head">
    <h3>Your cart</h3>
    <button class="cart-close" id="cartCloseBtn" aria-label="Close cart"><i class="fas fa-times"></i></button>
  </div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-foot" id="cartFoot"></div>
</aside>

<div class="toast" id="toast" role="status"></div>

<script>
(function(){
  "use strict";

  const CATEGORIES = [
    { id:'all', name:'All', icon:'fa-border-all' },
    { id:'phones', name:'Smartphones', icon:'fa-mobile-alt' },
    { id:'laptops', name:'Laptops', icon:'fa-laptop' },
    { id:'gadgets', name:'Gadgets', icon:'fa-headphones' },
    { id:'footwear', name:'Footwear', icon:'fa-shoe-prints' },
    { id:'accessories', name:'Accessories', icon:'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Aviator Sunglasses', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, badge:'Sale', img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:9, title:'Running Sneakers', price:95, rating:4, reviews:71, img:'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:10, title:'Pixel 8 Pro', price:899, rating:4, reviews:64, badge:'New', img:'https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:11, title:'Dell XPS 13', price:1299, rating:4, reviews:38, img:'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:12, title:'Mechanical Keyboard', price:139, rating:5, reviews:97, img:'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];

  const state = {
    category: 'all',
    query: '',
    sort: 'popular',
    cart: {},      // id -> qty
    wishlist: new Set()
  };

  const $ = (sel) => document.querySelector(sel);
  const $$ = (sel) => Array.from(document.querySelectorAll(sel));

  function escapeHtml(text){
    return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
  }
  function money(n){ return '$' + n.toLocaleString(); }

  // ---------- Category chips ----------
  function renderChips(){
    const wrap = $('#categoryChips');
    wrap.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const btn = document.createElement('button');
      btn.className = 'chip' + (state.category === cat.id ? ' active' : '');
      btn.setAttribute('aria-pressed', state.category === cat.id);
      btn.innerHTML = `<i class="fas ${cat.icon}"></i> ${cat.name}`;
      btn.addEventListener('click', () => {
        state.category = cat.id;
        renderChips();
        renderProducts();
      });
      wrap.appendChild(btn);
    });
  }

  // ---------- Filtering / sorting ----------
  function getFilteredProducts(){
    let list = PRODUCTS.slice();
    if (state.category !== 'all'){
      list = list.filter(p => p.category === state.category);
    }
    const q = state.query.trim().toLowerCase();
    if (q){
      list = list.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    }
    switch(state.sort){
      case 'price-asc': list.sort((a,b)=>a.price-b.price); break;
      case 'price-desc': list.sort((a,b)=>b.price-a.price); break;
      case 'rating': list.sort((a,b)=>b.rating-a.rating); break;
      default: list.sort((a,b)=> b.reviews - a.reviews);
    }
    return list;
  }

  // ---------- Product grid ----------
  function renderProducts(){
    const grid = $('#productsGrid');
    const list = getFilteredProducts();
    $('#resultCount').textContent = list.length + (list.length === 1 ? ' item' : ' items');

    if (list.length === 0){
      grid.innerHTML = `
        <div class="empty-state">
          <i class="fas fa-box-open"></i>
          <p>No products match "${escapeHtml(state.query)}" in this category.</p>
          <button class="btn btn-teal" id="clearFiltersBtn">Clear filters</button>
        </div>`;
      $('#clearFiltersBtn').addEventListener('click', () => {
        state.query = '';
        state.category = 'all';
        $('#searchInput').value = '';
        renderChips();
        renderProducts();
      });
      return;
    }

    grid.innerHTML = list.map(p => {
      const inWishlist = state.wishlist.has(p.id);
      const qtyInCart = state.cart[p.id] || 0;
      return `
      <article class="product">
        <div class="product-media">
          ${p.badge ? `<span class="product-badge ${p.badge === 'New' ? 'badge-new' : 'badge-sale'}">${p.badge}</span>` : ''}
          <button class="wish-toggle ${inWishlist ? 'active' : ''}" data-wish="${p.id}" aria-pressed="${inWishlist}" aria-label="${inWishlist ? 'Remove from' : 'Add to'} wishlist">
            <i class="${inWishlist ? 'fas' : 'far'} fa-heart"></i>
          </button>
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        </div>
        <div class="product-body">
          <div class="product-cat">${p.category}</div>
          <div class="product-title">${escapeHtml(p.title)}</div>
          <div class="product-rating"><span class="stars">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))}</span> (${p.reviews})</div>
          <div class="price-row">
            <span class="price">${money(p.price)}</span>
            ${p.oldPrice ? `<span class="old-price">${money(p.oldPrice)}</span>` : ''}
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-add="${p.id}" data-added="false">
            <i class="fas fa-cart-plus"></i> ${qtyInCart > 0 ? 'In cart · ' + qtyInCart : 'Add to cart'}
          </button>
        </div>
      </article>`;
    }).join('');

    $$('[data-add]').forEach(btn => btn.addEventListener('click', () => addToCart(Number(btn.dataset.add))));
    $$('[data-wish]').forEach(btn => btn.addEventListener('click', () => toggleWishlist(Number(btn.dataset.wish))));
  }

  // ---------- Wishlist ----------
  function toggleWishlist(id){
    if (state.wishlist.has(id)) state.wishlist.delete(id);
    else state.wishlist.add(id);
    const count = state.wishlist.size;
    const badge = $('#wishCount');
    badge.hidden = count === 0;
    badge.textContent = count;
    renderProducts();
  }

  // ---------- Cart ----------
  function addToCart(id){
    state.cart[id] = (state.cart[id] || 0) + 1;
    updateCartBadge();
    renderProducts();
    renderCartDrawer();
    const p = PRODUCTS.find(x => x.id === id);
    showToast(`${p.title} added to cart`);
  }

  function changeQty(id, delta){
    const next = (state.cart[id] || 0) + delta;
    if (next <= 0) delete state.cart[id];
    else state.cart[id] = next;
    updateCartBadge();
    renderProducts();
    renderCartDrawer();
  }

  function removeFromCart(id){
    delete state.cart[id];
    updateCartBadge();
    renderProducts();
    renderCartDrawer();
  }

  function cartTotalCount(){
    return Object.values(state.cart).reduce((a,b)=>a+b, 0);
  }
  function cartTotalPrice(){
    return Object.entries(state.cart).reduce((sum, [id, qty]) => {
      const p = PRODUCTS.find(x => x.id === Number(id));
      return sum + (p ? p.price * qty : 0);
    }, 0);
  }

  function updateCartBadge(){
    const count = cartTotalCount();
    const badge = $('#cartCount');
    badge.hidden = count === 0;
    badge.textContent = count;
  }

  function renderCartDrawer(){
    const itemsWrap = $('#cartItems');
    const footWrap = $('#cartFoot');
    const entries = Object.entries(state.cart);

    if (entries.length === 0){
      itemsWrap.innerHTML = `
        <div class="cart-empty">
          <i class="fas fa-shopping-bag"></i>
          <p>Your cart is empty.<br>Browse the shop to add something you like.</p>
        </div>`;
      footWrap.innerHTML = '';
      return;
    }

    itemsWrap.innerHTML = entries.map(([id, qty]) => {
      const p = PRODUCTS.find(x => x.id === Number(id));
      if (!p) return '';
      return `
        <div class="cart-item">
          <img src="${p.img}" alt="">
          <div class="cart-item-info">
            <div class="cart-item-title">${escapeHtml(p.title)}</div>
            <div class="cart-item-price">${money(p.price)} each</div>
            <div class="qty-row">
              <button class="qty-btn" data-dec="${p.id}" aria-label="Decrease quantity">−</button>
              <span class="qty-val">${qty}</span>
              <button class="qty-btn" data-inc="${p.id}" aria-label="Increase quantity">+</button>
              <button class="remove-btn" data-remove="${p.id}">Remove</button>
            </div>
          </div>
        </div>`;
    }).join('');

    footWrap.innerHTML = `
      <div class="cart-total-row"><span>Subtotal</span><strong>${money(cartTotalPrice())}</strong></div>
      <button class="btn btn-clay" id="checkoutBtn">Checkout <i class="fas fa-arrow-right"></i></button>
    `;

    $$('[data-inc]').forEach(b => b.addEventListener('click', () => changeQty(Number(b.dataset.inc), 1)));
    $$('[data-dec]').forEach(b => b.addEventListener('click', () => changeQty(Number(b.dataset.dec), -1)));
    $$('[data-remove]').forEach(b => b.addEventListener('click', () => removeFromCart(Number(b.dataset.remove))));
    const checkoutBtn = $('#checkoutBtn');
    if (checkoutBtn) checkoutBtn.addEventListener('click', () => showToast('This is a demo — checkout isn\'t wired up yet.'));
  }

  function openCart(){
    $('#cartDrawer').classList.add('open');
    $('#overlay').classList.add('open');
    $('#cartDrawer').setAttribute('aria-hidden','false');
  }
  function closeCart(){
    $('#cartDrawer').classList.remove('open');
    $('#overlay').classList.remove('open');
  }

  // ---------- Toast ----------
  let toastTimer;
  function showToast(msg){
    const toast = $('#toast');
    toast.innerHTML = `<i class="fas fa-check-circle"></i> ${escapeHtml(msg)}`;
    toast.classList.add('show');
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove('show'), 2400);
  }

  // ---------- Search ----------
  $('#searchForm').addEventListener('submit', (e) => {
    e.preventDefault();
    state.query = $('#searchInput').value;
    renderProducts();
  });
  $('#searchInput').addEventListener('input', (e) => {
    state.query = e.target.value;
    renderProducts();
  });

  // ---------- Sort ----------
  $('#sortSelect').addEventListener('change', (e) => {
    state.sort = e.target.value;
    renderProducts();
  });

  // ---------- Mobile nav ----------
  const menuToggle = $('#menuToggle');
  const mobileNav = $('#mobileNav');
  menuToggle.addEventListener('click', () => {
    const isOpen = mobileNav.classList.toggle('open');
    menuToggle.setAttribute('aria-expanded', isOpen);
  });

  // ---------- Cart drawer open/close ----------
  $('#cartOpenBtn').addEventListener('click', openCart);
  $('#cartCloseBtn').addEventListener('click', closeCart);
  $('#overlay').addEventListener('click', closeCart);
  document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeCart(); });

  // ---------- Hero / deal CTAs ----------
  $('#shopNowBtn').addEventListener('click', () => {
    document.getElementById('shop').scrollIntoView({behavior:'smooth', block:'start'});
  });
  $('#buyDealBtn').addEventListener('click', () => {
    addToCart(2); // MacBook Pro used as stand-in id for the deal item
    openCart();
  });

  // ---------- Newsletter ----------
  $('#newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = $('#newsletterEmail').value.trim();
    const msg = $('#newsletterMsg');
    msg.hidden = false;
    if (!email || !email.includes('@')){
      msg.textContent = 'Please enter a valid email address.';
      msg.style.color = '#FFC9BB';
      return;
    }
    msg.textContent = 'Thanks — you\'re subscribed.';
    msg.style.color = '#B9E6C9';
    $('#newsletterEmail').value = '';
  });

  // ---------- Countdown timer ----------
  (function setupDealTimer(){
    const target = new Date(Date.now() + (24*60+36)*60*1000);
    function tick(){
      const diff = target - new Date();
      if (diff <= 0){ clearInterval(timer); return; }
      const days = Math.floor(diff/(24*3600*1000));
      const hours = Math.floor((diff % (24*3600*1000))/(3600*1000));
      const mins = Math.floor((diff % (3600*1000))/(60*1000));
      const secs = Math.floor((diff % (60*1000))/1000);
      $('#dealDays').textContent = days;
      $('#dealHours').textContent = String(hours).padStart(2,'0');
      $('#dealMinutes').textContent = String(mins).padStart(2,'0');
      $('#dealSeconds').textContent = String(secs).padStart(2,'0');
    }
    tick();
    const timer = setInterval(tick, 1000);
  })();

  // ---------- Init ----------
  $('#year').textContent = new Date().getFullYear();
  renderChips();
  renderProducts();
  renderCartDrawer();
})();
</script>
</body>
</html>
