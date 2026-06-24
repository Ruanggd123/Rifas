<style>
/* -------------------------------------------
   GLOBAL ULTRA PREMIUM THEME
   ------------------------------------------- */
body {
    background: radial-gradient(circle at top right, #111a2e, #070a11) !important;
    background-color: #070a11 !important;
    background-attachment: fixed !important;
    color: #e2e8f0 !important;
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
}

/* App Main Container */
.app-main {
    max-width: 600px !important;
    margin: 0 auto;
    padding: 20px 15px;
    min-height: 100vh;
}

/* Titles */
.app-title {
    margin-bottom: 24px;
    margin-top: 10px;
}
.app-title h1 {
    font-size: 28px;
    font-weight: 900;
    color: #ffffff;
    margin-bottom: 2px;
    letter-spacing: -0.8px;
    text-transform: uppercase;
    background: linear-gradient(135deg, #ffffff, #94a3b8);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}
.app-title-desc {
    font-size: 13px;
    color: #F5D061;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 700;
}

/* -------------------------------------------
   CAMPAIGN CARDS (Glassmorphism & Edge-to-Edge)
   ------------------------------------------- */
.premium-card {
    position: relative;
    background: rgba(22, 27, 34, 0.4);
    border: 1px solid rgba(255, 255, 255, 0.05);
    border-radius: 24px;
    overflow: hidden;
    margin-bottom: 24px;
    transition: transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.3s ease;
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
    text-decoration: none !important;
    display: block;
}

.premium-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(245, 208, 97, 0.15);
    border-color: rgba(245, 208, 97, 0.3);
}

.premium-card-image {
    position: relative;
    width: 100%;
    height: 400px; 
}
.premium-card-image.normal-height {
    height: 300px;
}
.premium-card-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

/* Glassmorphism Info Panel overlaid on bottom of image */
.premium-card-info {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    padding: 24px 20px 20px 20px;
    background: linear-gradient(to top, rgba(11, 15, 25, 0.95) 0%, rgba(11, 15, 25, 0.8) 60%, rgba(11, 15, 25, 0) 100%);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.premium-card-title {
    font-size: 22px;
    font-weight: 900;
    color: #ffffff;
    margin-bottom: 4px;
    letter-spacing: -0.5px;
    text-shadow: 0 2px 4px rgba(0,0,0,0.8);
}
.premium-card-subtitle {
    font-size: 14px;
    color: #cbd5e1;
    margin-bottom: 8px;
    font-weight: 500;
    text-shadow: 0 1px 3px rgba(0,0,0,0.8);
}

/* Badges floating on top of the image */
.premium-badge-container {
    position: absolute;
    top: 16px;
    left: 16px;
    z-index: 10;
    display: flex;
    flex-direction: column;
    gap: 8px;
    align-items: flex-start;
}

.badge-premium {
    padding: 8px 16px !important;
    border-radius: 30px !important;
    font-weight: 800 !important;
    font-size: 11px !important;
    letter-spacing: 1px;
    text-transform: uppercase;
    box-shadow: 0 4px 15px rgba(0,0,0,0.4);
    backdrop-filter: blur(8px);
    animation: pulseGlow 2s infinite;
}
@keyframes pulseGlow {
    0% { box-shadow: 0 0 0 0 rgba(245, 208, 97, 0.4); }
    70% { box-shadow: 0 0 0 10px rgba(245, 208, 97, 0); }
    100% { box-shadow: 0 0 0 0 rgba(245, 208, 97, 0); }
}

.badge-gold {
    background: linear-gradient(135deg, #E6A31E, #F5D061) !important;
    color: #000000 !important;
    border: 1px solid rgba(255,255,255,0.6);
}
.badge-dark-glass {
    background: rgba(0, 0, 0, 0.6) !important;
    color: #ffffff !important;
    border: 1px solid rgba(255,255,255,0.2);
    animation: none;
}

.premium-calendar {
    color: #F5D061 !important;
    font-size: 12px !important;
    font-weight: 700 !important;
    display: inline-flex;
    align-items: center;
    background: rgba(0, 0, 0, 0.5);
    backdrop-filter: blur(4px);
    padding: 6px 12px;
    border-radius: 20px;
    border: 1px solid rgba(245, 208, 97, 0.3);
    margin-top: 4px;
}

/* -------------------------------------------
   WINNERS SECTION (Luxurious Row)
   ------------------------------------------- */
.premium-winner-card {
    background: rgba(22, 27, 34, 0.6);
    backdrop-filter: blur(12px);
    border: 1px solid rgba(255, 255, 255, 0.05);
    border-radius: 20px;
    padding: 16px;
    display: flex;
    align-items: center;
    gap: 20px;
    margin-bottom: 16px;
    transition: transform 0.2s, border-color 0.2s;
    box-shadow: 0 8px 20px rgba(0,0,0,0.3);
}
.premium-winner-card:hover {
    transform: scale(1.02);
    border-color: rgba(245, 208, 97, 0.3);
}
.winner-avatar-wrapper {
    position: relative;
    flex-shrink: 0;
}
.winner-avatar {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #F5D061;
    box-shadow: 0 0 15px rgba(245, 208, 97, 0.4);
}
.winner-crown {
    position: absolute;
    top: -14px;
    left: 50%;
    transform: translateX(-50%);
    color: #F5D061;
    font-size: 22px;
    filter: drop-shadow(0 2px 4px rgba(0,0,0,0.8));
}
.winner-info {
    flex-grow: 1;
}
.winner-info h3 {
    font-size: 18px;
    font-weight: 800;
    color: #ffffff;
    margin-bottom: 4px;
}
.winner-info p {
    font-size: 13px;
    color: #94a3b8;
    margin-bottom: 2px;
}
.winner-info p b {
    color: #e2e8f0;
    font-weight: 600;
}
.winner-lucky-number {
    display: inline-block;
    background: rgba(245, 208, 97, 0.15);
    color: #F5D061;
    padding: 4px 10px;
    border-radius: 8px;
    font-weight: 800;
    letter-spacing: 1px;
    border: 1px solid rgba(245, 208, 97, 0.3);
    margin-top: 6px;
    font-size: 14px;
}

/* -------------------------------------------
   FAQ SECTION
   ------------------------------------------- */
.premium-faq-item {
    background: rgba(22, 27, 34, 0.5);
    border: 1px solid rgba(255, 255, 255, 0.05);
    border-radius: 16px;
    margin-bottom: 12px;
    overflow: hidden;
    transition: all 0.3s ease;
    box-shadow: 0 4px 12px rgba(0,0,0,0.2);
}
.premium-faq-item:hover {
    border-color: rgba(255, 255, 255, 0.2);
    background: rgba(22, 27, 34, 0.8);
}
.premium-faq-question {
    padding: 16px 20px;
    font-weight: 600;
    font-size: 15px;
    color: #ffffff;
    cursor: pointer;
    display: flex;
    align-items: center;
}
.premium-faq-question i {
    color: #F5D061;
    font-size: 20px;
    margin-right: 14px;
    transition: transform 0.3s;
}
.premium-faq-question:not(.collapsed) i {
    transform: rotate(90deg);
}
.premium-faq-answer {
    padding: 0 20px 16px 54px;
    color: #94a3b8;
    font-size: 14px;
    line-height: 1.6;
}
</style>

<script>
  window.addEventListener("load", function () {
    setTimeout(function () {
      document.getElementById("loadingSystem").style.display = "none";
    }, 2000);
  });
  window.addEventListener("beforeunload", function () {
    document.getElementById("loadingSystem").style.display = "block";
  });
</script>
<div id="loadingSystem" style="display: none;"></div>

<div class="container app-main">
    
    <!-- FEATURED CAMPAIGNS -->
    <div class="row">
        <div class="col-12">
            <div class="app-title">
                <h1><i class="bi bi-lightning-charge-fill" style="color: #F5D061; -webkit-text-fill-color: #F5D061;"></i> Campanhas</h1>
                <div class="app-title-desc">Oportunidades Únicas</div>
            </div>
        </div>
    </div>
    
    <?php
    $qry = $conn->query('SELECT * FROM `product_list` WHERE status_display <> \'4\' AND featured_draw = \'1\' ORDER BY RAND() LIMIT 1');
    while ($row = $qry->fetch_assoc()) { ?>
        <div class="col-12">
            <a href="/campanha/<?php echo $row['slug']; ?>" class="premium-card">
                
                <div class="premium-badge-container">
                    <?php
                    $status = (int) $row['status_display'];
                    switch ($status) {
                        case 1:
                            echo '<span class="badge badge-premium badge-gold"><i class="bi bi-star-fill me-1"></i> Adquira já!</span>';
                            break;
                        case 2:
                            echo '<span class="badge badge-premium badge-gold"><i class="bi bi-lightning-fill me-1"></i> Quase Esgotado!</span>';
                            break;
                        case 3:
                            echo '<span class="badge badge-premium badge-dark-glass">Aguarde a campanha</span>';
                            break;
                        case 4:
                            echo '<span class="badge badge-premium badge-dark-glass">Concluído</span>';
                            break;
                        case 5:
                            echo '<span class="badge badge-premium badge-dark-glass">Em breve!</span>';
                            break;
                        case 6:
                            echo '<span class="badge badge-premium badge-dark-glass">Aguarde o sorteio</span>';
                            break;
                    }
                    ?>
                </div>

                <div class="premium-card-image">
                    <img alt="<?php echo $row['name']; ?>" src="<?php echo validate_image($row['image_path']); ?>">
                    
                    <div class="premium-card-info">
                        <h2 class="premium-card-title"><?php echo $row['name']; ?></h2>
                        <div class="premium-card-subtitle"><?php echo (isset($row['subtitle']) ? $row['subtitle'] : ''); ?></div>
                        <?php if (!empty($row['date_of_draw'])) {
                            $dataHora = date('d/m/Y', strtotime($row['date_of_draw'])) . ' às ' . date('H:i', strtotime($row['date_of_draw']));
                            echo '<div class="premium-calendar"><i class="bi bi-calendar-event-fill me-2"></i>Sorteio: ' . $dataHora . '</div>';
                        } ?>
                    </div>
                </div>

            </a>
        </div>
    <?php } ?>

    <!-- NORMAL CAMPAIGNS -->
    <div class="row mt-3">
    <?php
    $qry = $conn->query('SELECT * FROM `product_list` WHERE featured_draw = \'0\' AND private_draw = \'0\' ORDER BY id DESC LIMIT 10');
    if ($qry->num_rows > 0) {
        while ($row = $qry->fetch_assoc()) {
    ?>
        <div class="col-12">
            <a href="/campanha/<?php echo $row['slug']; ?>" class="premium-card">
                
                <div class="premium-badge-container">
                    <?php
                    if ($row['status_display'] == 1) {
                        echo '<span class="badge badge-premium badge-gold"><i class="bi bi-play-fill me-1"></i> Participar</span>';
                    } elseif ($row['status_display'] == 2) {
                        echo '<span class="badge badge-premium badge-gold"><i class="bi bi-lightning-fill me-1"></i> Esgotando</span>';
                    } elseif ($row['status_display'] == 3) {
                        echo '<span class="badge badge-premium badge-dark-glass">Aguarde</span>';
                    } elseif ($row['status_display'] == 4) {
                        echo '<span class="badge badge-premium badge-dark-glass">Concluído</span>';
                    } elseif ($row['status_display'] == 5) {
                        echo '<span class="badge badge-premium badge-dark-glass">Em breve!</span>';
                    } elseif ($row['status_display'] == 6) {
                        echo '<span class="badge badge-premium badge-dark-glass">Aguarde o sorteio</span>';
                    }
                    ?>
                </div>

                <div class="premium-card-image normal-height">
                    <img alt="<?php echo $row['name']; ?>" src="<?php echo validate_image($row['image_path']); ?>" loading="lazy">
                    
                    <div class="premium-card-info">
                        <h2 class="premium-card-title"><?php echo $row['name']; ?></h2>
                        <div class="premium-card-subtitle"><?php echo isset($row['subtitle']) ? $row['subtitle'] : ''; ?></div>
                        <?php if (!empty($row['date_of_draw'])) { ?>
                        <div class="premium-calendar"><i class="bi bi-calendar-event-fill me-2"></i><?php echo date('d/m/Y', strtotime($row['date_of_draw'])) . ' às ' . date('H:i', strtotime($row['date_of_draw'])); ?></div>
                        <?php } ?>
                    </div>
                </div>

            </a>
        </div>
    <?php
        }
    }
    ?>
    </div>

    <!-- WINNERS SECTION -->
    <?php
    $sql = 'SELECT name AS product_name, draw_number, draw_winner, image_path, slug, date_of_draw FROM product_list WHERE draw_number <> \'\' ORDER BY date_of_draw DESC LIMIT 5';
    $products = $conn->query($sql);

    if (0 < $products->num_rows) {
    ?>
        <div class="mt-4 mb-2">
            <div class="col-12">
                <div class="app-title">
                    <h1><i class="bi bi-trophy-fill" style="color: #F5D061; -webkit-text-fill-color: #F5D061;"></i> Hall da Fama</h1>
                    <div class="app-title-desc">Últimos Ganhadores</div>
                </div>
            </div>

            <div class="col-12">
                <?php
                while ($row = $products->fetch_assoc()) {
                    $product_name = $row['product_name'];
                    $draw_number = $row['draw_number'];
                    $draw_name = $row['draw_winner'];
                    $draw_number_arr = json_decode(json_encode($draw_number));
                    $draw_winner_arr = json_decode(json_encode($draw_name));
                    $draw_number = $draw_number_arr[0];
                    $draw_name = $draw_winner_arr[0];
                    $date_of_draw = strtotime($row['date_of_draw']);
                    $date_of_draw = date('d/m/y', $date_of_draw);
                    $image_path = validate_image($row['image_path']);

                    if (!empty($draw_number_arr)) {
                        $draw_number_arr = (isset($draw_number_arr) ? $draw_number_arr : '');

                        if ($draw_number_arr) {
                            $draw_winner_arr = json_decode($draw_winner_arr, true);
                            $draw_number_arr = json_decode($draw_number_arr, true);
                            $winners = [];

                            foreach ($draw_winner_arr as $qty_index => $name) {
                                foreach ($draw_number_arr as $amount_index => $number) {
                                   $query = $conn->query("SELECT CONCAT(firstname, ' ', lastname) as name, avatar, phone FROM customer_list WHERE phone = '$name'");
                                   $rowCustomer = $query->fetch_assoc();

                                   $ddd = substr($rowCustomer['phone'], 0, 2);
                                   $masked_phone = "($ddd) ****-****";

                                   $winners[$qty_index] = [
                                    'name' => $rowCustomer['name'],
                                    'number' => $number,
                                    'product' => $product_name,
                                    'date' => $date_of_draw,
                                    'image' => ($rowCustomer['avatar'] ? validate_image($rowCustomer['avatar']) : BASE_URL . 'assets/img/avatar.png'),
                                    'phone' => $masked_phone
                                     ];
                                }
                            }

                            foreach ($winners as $winner) {
                ?>
                            <div class="premium-winner-card">
                                <div class="winner-avatar-wrapper">
                                    <i class="bi bi-amd winner-crown" style="font-family: 'bootstrap-icons'; content: '\\f287';"></i> <!-- Crown substitute -->
                                    <img alt="Ganhador" src="<?php echo $winner['image']; ?>" class="winner-avatar">
                                </div>
                                <div class="winner-info">
                                    <h3><?php echo $winner['name']; ?></h3>
                                    <p>Prêmio: <b><?php echo $winner['product']; ?></b></p>
                                    <p>Telefone: <b><?php echo $winner['phone']; ?></b> | Data: <b><?php echo $winner['date']; ?></b></p>
                                    <div class="winner-lucky-number"><i class="bi bi-ticket-perforated-fill me-1"></i> Nº Sorteado: <?php echo $winner['number']; ?></div>
                                </div>
                            </div>
                <?php
                            }
                        }
                    }
                }
                ?>
            </div>
        </div>
    <?php } ?>

    <!-- FAQ SECTION -->
    <div class="app-perguntas mt-4">
        <div class="app-title">
            <h1><i class="bi bi-chat-right-quote-fill" style="color: #F5D061; -webkit-text-fill-color: #F5D061;"></i> Dúvidas Frequentes</h1>
            <div class="app-title-desc">Transparência Total</div>
        </div>
        <div id="perguntas-box">
            <?php if (!!$_settings->info('question1') && !!$_settings->info('answer1')): ?>
                <div class="premium-faq-item">
                    <div class="premium-faq-question collapsed" data-bs-toggle="collapse" data-bs-target="#faq-1">
                        <i class="bi bi-chevron-right"></i>
                        <span><?php echo $_settings->info('question1'); ?></span>
                    </div>
                    <div class="collapse" id="faq-1" data-bs-parent="#perguntas-box">
                        <div class="premium-faq-answer">
                            <?php echo $_settings->info('answer1'); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php if (!!$_settings->info('question2') && !!$_settings->info('answer2')): ?>
                <div class="premium-faq-item">
                    <div class="premium-faq-question collapsed" data-bs-toggle="collapse" data-bs-target="#faq-2">
                        <i class="bi bi-chevron-right"></i>
                        <span><?php echo $_settings->info('question2'); ?></span>
                    </div>
                    <div class="collapse" id="faq-2" data-bs-parent="#perguntas-box">
                        <div class="premium-faq-answer">
                            <?php echo $_settings->info('answer2'); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php if (!!$_settings->info('question3') && !!$_settings->info('answer3')): ?>
                <div class="premium-faq-item">
                    <div class="premium-faq-question collapsed" data-bs-toggle="collapse" data-bs-target="#faq-3">
                        <i class="bi bi-chevron-right"></i>
                        <span><?php echo $_settings->info('question3'); ?></span>
                    </div>
                    <div class="collapse" id="faq-3" data-bs-parent="#perguntas-box">
                        <div class="premium-faq-answer">
                            <?php echo $_settings->info('answer3'); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php if (!!$_settings->info('question4') && !!$_settings->info('answer4')): ?>
                <div class="premium-faq-item">
                    <div class="premium-faq-question collapsed" data-bs-toggle="collapse" data-bs-target="#faq-4">
                        <i class="bi bi-chevron-right"></i>
                        <span><?php echo $_settings->info('question4'); ?></span>
                    </div>
                    <div class="collapse" id="faq-4" data-bs-parent="#perguntas-box">
                        <div class="premium-faq-answer">
                            <?php echo $_settings->info('answer4'); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($enable_password == 1): ?>
                <div class="premium-faq-item">
                    <div class="premium-faq-question collapsed" data-bs-toggle="collapse" data-bs-target="#faq-5">
                        <i class="bi bi-chevron-right"></i>
                        <span>Esqueci minha senha, como faço?</span>
                    </div>
                    <div class="collapse" id="faq-5" data-bs-parent="#perguntas-box">
                        <div class="premium-faq-answer">
                            Você consegue recuperar sua senha indo no menu do site, depois em "Entrar" e logo a baixo tem "Esqueci minha senha".
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>
