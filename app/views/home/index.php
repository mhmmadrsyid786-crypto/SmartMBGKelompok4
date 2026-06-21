<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - SMART MBG</title>
    <!-- Google Fonts: Oufit & Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Outfit:wght@400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?= BASEURL; ?>/css/style.css">
</head>
<body>

    <div class="blob-shape blob-1"></div>
    <div class="blob-shape blob-2"></div>

    <main class="glass-container">
        <header>
            <div class="logo">
                <h1>SMART <span>MBG</span></h1>
            </div>
            <nav>
                <a href="<?= BASEURL; ?>" class="active">Beranda</a>
                <a href="<?= BASEURL; ?>/siswa">Data Siswa</a>
                <a href="<?= BASEURL; ?>/stok">Stok Bahan</a>
                <a href="<?= BASEURL; ?>/auth" class="btn-login">Login</a>
            </nav>
        </header>

        <section class="hero-section">
            <div class="hero-content">
                <div class="badge">Program Resmi</div>
                <h2>Makan Bergizi Gratis <span class="gradient-text">Nasional</span></h2>
                <p>Kelola kebutuhan gizi, stok bahan makanan, distribusi, hingga catatan khusus alergi siswa dengan efisien, akurat, dan transparan melalui platform cerdas ini.</p>
                <div class="cta-group">
                    <button onclick="window.location.href='<?= BASEURL; ?>/dashboard'" class="btn-primary">Dashboard Admin <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg></button>
                    <button onclick="window.location.href='<?= BASEURL; ?>/distribusi'" class="btn-secondary">Lihat Data Hari Ini</button>
                </div>
                
                <div class="trusted-by">
                    <p>Mendukung Gizi Ratusan Siswa Setiap Harinya</p>
                    <div class="avatars">
                        <div class="avatar"></div>
                        <div class="avatar"></div>
                        <div class="avatar"></div>
                        <div class="avatar-count">400+</div>
                    </div>
                </div>
            </div>
            <div class="hero-visual">
                <div class="image-wrapper">
                    <img src="<?= BASEURL; ?>/img/hero.png" alt="Healthy Food Box" class="hero-image floating">
                </div>
                
                <!-- Floating Glass Cards -->
                <div class="stats-card glass-panel card-top">
                    <div class="icon-box blue">🥣</div>
                    <div>
                        <h3>20,500+</h3>
                        <p>Kalori Dibagikan</p>
                    </div>
                </div>
                <div class="stats-card glass-panel card-bottom">
                    <div class="icon-box green">🛡️</div>
                    <div>
                        <h3>99%</h3>
                        <p>Aman Alergi</p>
                    </div>
                </div>
            </div>
        </section>

    </main>

</body>
</html>
