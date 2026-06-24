-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22/06/2026 às 15:48
-- Versão do servidor: 11.8.6-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u380083244_dgrau`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cart_list`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `config` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `customer_list`
--

CREATE TABLE `customer_list` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `phone` text NOT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cpf` text DEFAULT NULL,
  `zipcode` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `neighborhood` text DEFAULT NULL,
  `complement` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `reference_point` text DEFAULT NULL,
  `is_affiliate` tinyint(1) DEFAULT 0,
  `birth` date DEFAULT NULL,
  `instagram` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `customer_list`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `origin` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `logs`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `order_items`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `quantity` text DEFAULT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=pending2=paid3=cancelled',
  `roleta` int(11) DEFAULT 0,
  `box` int(11) DEFAULT 0,
  `roleta_aberta` int(11) DEFAULT 0,
  `box_aberta` int(11) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `order_token` varchar(100) DEFAULT NULL,
  `order_numbers` longtext DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `order_expiration` text DEFAULT NULL,
  `pix_code` text DEFAULT NULL,
  `pix_qrcode` text DEFAULT NULL,
  `txid` text DEFAULT NULL,
  `discount_amount` text DEFAULT NULL,
  `whatsapp_status` text DEFAULT NULL,
  `dwapi_status` text DEFAULT NULL,
  `id_mp` varchar(100) DEFAULT NULL,
  `referral_id` int(11) DEFAULT NULL,
  `pixel_sell` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `order_list`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `page_view`
--

CREATE TABLE `page_view` (
  `id` int(11) NOT NULL,
  `product_id` varchar(11) DEFAULT NULL,
  `customer_id` varchar(11) DEFAULT NULL,
  `page` varchar(255) NOT NULL,
  `origin` tinyint(1) NOT NULL COMMENT '1=Normal2=Pixel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_list`
--

CREATE TABLE `product_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type_of_draw` tinyint(1) NOT NULL DEFAULT 1,
  `qty_numbers` text NOT NULL,
  `min_purchase` text NOT NULL,
  `max_purchase` text NOT NULL,
  `slug` text NOT NULL,
  `pending_numbers` text NOT NULL,
  `paid_numbers` text NOT NULL,
  `ranking_qty` text NOT NULL,
  `enable_ranking` text NOT NULL,
  `image_gallery` text DEFAULT NULL,
  `enable_progress_bar` text NOT NULL,
  `enable_progress_bar_fake` tinyint(1) DEFAULT NULL,
  `enable_progress_bar_fake_value` decimal(10,2) DEFAULT NULL,
  `draw_number` text DEFAULT NULL,
  `status_display` text NOT NULL,
  `subtitle` text DEFAULT NULL,
  `date_of_draw` varchar(255) DEFAULT NULL,
  `limit_order_remove` text DEFAULT NULL,
  `discount_qty` longtext DEFAULT NULL,
  `discount_amount` longtext DEFAULT NULL,
  `discount_roleta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `roleta_qty` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `roleta_amount` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `enable_discount` text DEFAULT NULL,
  `enable_double` varchar(255) NOT NULL DEFAULT '0',
  `double_ini` varchar(250) DEFAULT NULL,
  `double_fim` varchar(250) DEFAULT NULL,
  `enable_cumulative_discount` text DEFAULT NULL,
  `enable_sale` text DEFAULT NULL,
  `sale_qty` text DEFAULT NULL,
  `sale_price` float(12,2) DEFAULT 0.00,
  `ranking_message` text DEFAULT NULL,
  `enable_ranking_show` text DEFAULT NULL,
  `draw_winner` text DEFAULT NULL,
  `private_draw` text DEFAULT NULL,
  `featured_draw` text DEFAULT NULL,
  `cotas_premiadas` longtext DEFAULT NULL,
  `cotas_premiadas_premios` mediumtext DEFAULT NULL,
  `cotas_premiadas_descricao` text DEFAULT NULL,
  `limit_orders` int(11) DEFAULT 0,
  `ranking_type` int(11) NOT NULL DEFAULT 1,
  `qty_select_1` int(11) NOT NULL DEFAULT 10,
  `qty_select_2` int(11) NOT NULL DEFAULT 20,
  `qty_select_3` int(11) NOT NULL DEFAULT 50,
  `qty_select_4` int(11) NOT NULL DEFAULT 100,
  `qty_select_5` int(11) NOT NULL DEFAULT 200,
  `qty_select_6` int(11) NOT NULL DEFAULT 300,
  `status_auto_cota` tinyint(1) NOT NULL DEFAULT 0,
  `valor_base_auto` int(11) NOT NULL DEFAULT 50,
  `quantidade_numeros` int(11) NOT NULL DEFAULT 2,
  `tipo_auto_cota` longtext DEFAULT NULL,
  `up` tinyint(1) NOT NULL DEFAULT 0,
  `quantidade_auto_cota` int(11) NOT NULL DEFAULT 0,
  `quantidade_auto_cota_diario` tinyint(1) DEFAULT 0,
  `roleta` tinyint(1) NOT NULL DEFAULT 0,
  `box` tinyint(1) NOT NULL DEFAULT 0,
  `enable_upsell` int(11) NOT NULL DEFAULT 0,
  `qtd_upsell` varchar(255) DEFAULT NULL,
  `desconto_upsell` varchar(255) DEFAULT NULL,
  `status_auto_cota_roleta` int(11) DEFAULT NULL,
  `tipo_auto_cota_roleta` longtext DEFAULT NULL,
  `cotas_premiadas_roleta` longtext DEFAULT NULL,
  `cotas_premiadas_premios_roleta` longtext DEFAULT NULL,
  `cotas_premiadas_descricao_roleta` longtext DEFAULT NULL,
  `discount_box` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `box_qty` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `box_amount` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status_auto_cota_box` int(11) DEFAULT NULL,
  `tipo_auto_cota_box` longtext DEFAULT NULL,
  `cotas_premiadas_box` longtext DEFAULT NULL,
  `cotas_premiadas_premios_box` longtext DEFAULT NULL,
  `cotas_premiadas_descricao_box` longtext DEFAULT NULL,
  `enable_ranking_definido` tinyint(1) DEFAULT NULL,
  `ranking_ini` varchar(255) DEFAULT NULL,
  `ranking_fim` varchar(255) DEFAULT NULL,
  `cota_diaria_ini` varchar(255) DEFAULT NULL,
  `cota_diaria_fim` varchar(255) DEFAULT NULL,
  `probabilidade` int(11) DEFAULT NULL,
  `habilitar_cota_sorte` tinyint(1) DEFAULT NULL,
  `cota_sorte_ini` varchar(255) DEFAULT NULL,
  `cota_sorte_fim` varchar(255) DEFAULT NULL,
  `cota_sorte` varchar(255) DEFAULT NULL,
  `quantidade_compra_sorte` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `product_list`
--

INSERT INTO `product_list` (`id`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`, `type_of_draw`, `qty_numbers`, `min_purchase`, `max_purchase`, `slug`, `pending_numbers`, `paid_numbers`, `ranking_qty`, `enable_ranking`, `image_gallery`, `enable_progress_bar`, `enable_progress_bar_fake`, `enable_progress_bar_fake_value`, `draw_number`, `status_display`, `subtitle`, `date_of_draw`, `limit_order_remove`, `discount_qty`, `discount_amount`, `discount_roleta`, `roleta_qty`, `roleta_amount`, `enable_discount`, `enable_double`, `double_ini`, `double_fim`, `enable_cumulative_discount`, `enable_sale`, `sale_qty`, `sale_price`, `ranking_message`, `enable_ranking_show`, `draw_winner`, `private_draw`, `featured_draw`, `cotas_premiadas`, `cotas_premiadas_premios`, `cotas_premiadas_descricao`, `limit_orders`, `ranking_type`, `qty_select_1`, `qty_select_2`, `qty_select_3`, `qty_select_4`, `qty_select_5`, `qty_select_6`, `status_auto_cota`, `valor_base_auto`, `quantidade_numeros`, `tipo_auto_cota`, `up`, `quantidade_auto_cota`, `quantidade_auto_cota_diario`, `roleta`, `box`, `enable_upsell`, `qtd_upsell`, `desconto_upsell`, `status_auto_cota_roleta`, `tipo_auto_cota_roleta`, `cotas_premiadas_roleta`, `cotas_premiadas_premios_roleta`, `cotas_premiadas_descricao_roleta`, `discount_box`, `box_qty`, `box_amount`, `status_auto_cota_box`, `tipo_auto_cota_box`, `cotas_premiadas_box`, `cotas_premiadas_premios_box`, `cotas_premiadas_descricao_box`, `enable_ranking_definido`, `ranking_ini`, `ranking_fim`, `cota_diaria_ini`, `cota_diaria_fim`, `probabilidade`, `habilitar_cota_sorte`, `cota_sorte_ini`, `cota_sorte_fim`, `cota_sorte`, `quantidade_compra_sorte`) VALUES
(16, 'START 160 0KM OU 15 MIL NO PIX ', 'Chegou a oportunidade que muita gente esperava.&#13;&#10;Uma START 160 0KM, impecável, pronta pra rodar e fazer parte da conquista de alguém que acredita na própria sorte. 🏍️✨&#13;&#10;&#13;&#10;Essa não é apenas mais uma ação.&#13;&#10;É a mistura perfeita entre oportunidade, emoção e a chance real de realizar um sonho pagando pouco.&#13;&#10;&#13;&#10;Cada número representa uma chance.&#13;&#10;Cada compartilhamento aumenta a ansiedade.&#13;&#10;E cada participante entra sabendo que pode ser o próximo a virar a chave e acelerar rumo a uma nova fase.&#13;&#10;&#13;&#10;⚡ Moto diferenciada&#13;&#10;⚡ Poucos números disponíveis&#13;&#10;⚡ Transparência, seriedade e premiação de verdade&#13;&#10;&#13;&#10;Quem acompanha sabe do nível das nossas ações.&#13;&#10;E quem participa… sabe a sensação de estar concorrendo em algo grande. 🍀', 0.08, 'uploads/campanhas/capasitedududgr4au.png?v=1781788962', 1, 0, '2026-05-28 16:43:47', '2026-06-22 10:44:47', 1, '1000000', '50', '200000', 'start-160-0km-ou-15-mil-no-pix-2', '33028', '52832', '3', '1', '[\"uploads\\/campanhas\\/IMG_0104.jpeg\",\"uploads\\/campanhas\\/IMG_0105.jpeg\",\"uploads\\/campanhas\\/1IMG_0097.jpeg\",\"uploads\\/campanhas\\/1IMG_0104.jpeg\",\"uploads\\/campanhas\\/IMG_0110.jpeg\"]', '1', 0, 0.00, 'null', '1', 'PAPO DE MUDANÇA DE VIDA ', '', '5', 'null', '[]', '', '[\"3\",\"5\",\"8\"]', '[\"100\",\"250\",\"500\"]', '1', '0', '', '', '0', '0', '0', 0.00, '', '1', 'false', '0', '1', '112.748,287.391,456.820,673.154,918.437,24.581,68.394,95.172,143.806,176.429', '112.748:500$:premiada,287.391:500$:premiada,456.820:500$:premiada,673.154:200$:premiada,918.437:300$:premiada,24.581:100$:premiada,68.394:100$:premiada,95.172:100$:premiada,143.806:100$:premiada,176.429:100$:premiada', '', 1000000, 1, 10, 20, 50, 100, 200, 300, 1, 0, 2, '112.748,287.391,456.820,918.437,68.394', 0, 0, 0, 1, 1, 0, '', '', 0, '48.217,91.563,137.804,184.992,226.451,279.638,341.275,398.714,447.920,503.186,47281,138096,221754,349117,417863,528493,643275,711982,856341,973608', '48.217,91.563,137.804,184.992,226.451,279.638,341.275,398.714,447.920,503.186,47281,138096,221754,349117,417863,528493,643275,711982,856341,973608', '48.217:100$:premiada,91.563:100$:premiada,137.804:100$:premiada,184.992:100$:premiada,226.451:100$:premiada,279.638:100$:premiada,341.275:100$:premiada,398.714:200$:premiada,447.920:200$:premiada,503.186:200$:premiada,47281:100$:premiada,138096:100$:premiada,221754:100$:premiada,349117:100$:premiada,417863:100$:premiada,528493:100$:premiada,643275:100$:premiada,711982:100$:premiada,856341:100$:premiada,973608:100$:premiada', '', '', '[\"2\",\"4\",\"8\"]', '[\"100\",\"250\",\"500\"]', 0, '', '', '', '', 0, '', '', '', '', 100, 1, '2026-06-03T22:51', '2026-06-03T00:48', '68394', '20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `referral`
--

CREATE TABLE `referral` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `referral_code` varchar(100) DEFAULT NULL,
  `percentage` float(12,2) NOT NULL DEFAULT 0.00,
  `amount_paid` float(12,2) NOT NULL DEFAULT 0.00,
  `amount_pending` float(12,2) NOT NULL DEFAULT 0.00,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `referral_transactions`
--

CREATE TABLE `referral_transactions` (
  `id` int(11) NOT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT 0.00,
  `referral_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `referral_transactions`
--


-- --------------------------------------------------------

--
-- Estrutura para tabela `system_info`
--

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'DGR4UPREMIAÇOES'),
(2, 'short_name', ''),
(3, 'logo', 'uploads/logo.png?v=1779930103'),
(4, 'user_avatar', 'uploads/user_avatar.jpg'),
(5, 'cover', 'uploads/cover.png?v=1675042834'),
(6, 'phone', '88982244774'),
(7, 'mobile', '00000'),
(8, 'email', 'Dudu83nasci@gmail.com'),
(9, 'address', 'Endereço'),
(10, 'mercadopago', '2'),
(11, 'mercadopago_access_token', 'APP_USR-325888472139985-072111-bf236d0726f8d6ce60a581cf62f10140-1170836546'),
(12, 'gerencianet', '1'),
(13, 'gerencianet_client_id', 'Client_Id_85d4a62d5bc618435816c7aa1258e2194cd40642'),
(14, 'gerencianet_client_secret', 'Client_Secret_0a78dadf4e70ef59b5ea3ac1c7c0894ac5bbf495'),
(15, 'gerencianet_pix_key', 'c86d027e-2c93-48e8-90e5-e6a6217b9042'),
(16, 'gateway', '1'),
(17, 'enable_cpf', '2'),
(18, 'enable_email', '2'),
(19, 'enable_address', '2'),
(20, 'favicon', 'uploads/favicon.png?v=1779904925'),
(21, 'enable_share', '1'),
(22, 'enable_groups', '2'),
(23, 'telegram_group_url', ''),
(24, 'whatsapp_group_url', 'Seulinkaqui'),
(25, 'enable_footer', '1'),
(26, 'text_footer', ''),
(27, 'enable_password', '2'),
(28, 'paggue', '2'),
(29, 'paggue_client_key', ''),
(30, 'paggue_client_secret', ''),
(31, 'enable_pixel', '2'),
(32, 'facebook_access_token', 'EAAMJRtkmTmgBO6lKrMVFgNZB4Sy7YCLvz3SLDZBVH7PwZAkjdbhQKLhNpZCMBD13XtWHgt2i3ElMXy4ZCs5S6pOc846f8qnpuGAqSUvVjn4cysaywFK9CBZCljxB4UDur3l7DjsARX3J5kyGX6xuNDhiCiNpPJDMZBWbYZBkPi3rT5N4avD4sFj2EeYUZCvl1RTpLFQZDZD'),
(33, 'facebook_pixel_id', '1163730448614072'),
(34, 'enable_hide_numbers', '1'),
(35, 'whatsapp_footer', ''),
(36, 'instagram_footer', ''),
(37, 'facebook_footer', ''),
(38, 'twitter_footer', ''),
(39, 'youtube_footer', ''),
(40, 'enable_dwapi', '2'),
(41, 'token_dwapi', ''),
(42, 'numero_dwapi', ''),
(43, 'mensagem_novo_pedido_dwapi', ''),
(44, 'mensagem_pedido_pago_dwapi', ''),
(45, 'smtp_host', 'smtp.hostinger.com'),
(46, 'smtp_port', ' 465'),
(47, 'smtp_user', 'barraodadezenapremiada@gmail.com'),
(48, 'smtp_pass', '{a*^jxW5f?RPAc^$'),
(49, 'question1', 'Como acessar minhas compras?'),
(50, 'answer1', 'Fazendo login no site e abrindo o Menu Principal, você consegue consultar suas últimas compras no menu '),
(51, 'question2', 'Como envio o comprovante?'),
(52, 'answer2', 'Caso você tenha feito o pagamento via Pix QR Code ou copiando o código, não é necessário enviar o comprovante, aguardando até 5 minutos após o pagamento, o sistema irá dar baixa automaticamente, para mais dúvidas entre em contato conosco clicando aqui.'),
(53, 'question3', 'Como é o processo do sorteio?'),
(54, 'answer3', 'O sorteio será realizado com base na extração da Loteria Federal, conforme Condições de Participação constantes no título'),
(55, 'question4', ''),
(56, 'answer4', ''),
(57, 'terms', '<b>1)</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br><br> <b>2)</b> Lorem Ipsum has been the industry&apos;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br><br> <b>3)</b> It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <br><br> (i) It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. <br><br> (ii) Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &apos;lorem ipsum&apos; will uncover many web sites still in their infancy.<script>   window.location.href = '),
(58, 'enable_ga4', '2'),
(59, 'google_ga4_id', '1'),
(60, 'license', ''),
(61, 'enable_two_phone', '2'),
(62, 'enable_gtm', '2'),
(63, 'google_gtm_id', ''),
(64, 'theme', '2'),
(65, 'email_order', ''),
(66, 'email_purchase', ''),
(67, 'enable_legal_age', '2'),
(68, 'enable_birth', '2'),
(69, 'enable_instagram', '2'),
(70, 'enable_multiple_order', '2'),
(71, 'dealer_active', '2'),
(72, 'dealer_deactive_site', '2'),
(73, 'dealer_split_mercadopago', '2'),
(74, 'mercadopago_tax', ''),
(75, 'gerencianet_tax', '1'),
(76, 'paggue_tax', '0'),
(77, 'openpix_app_id', ''),
(78, 'openpix_tax', ''),
(79, 'pay2m_client_id', ''),
(80, 'pay2m_client_secret', ''),
(81, 'pay2m_tax', '0'),
(82, 'openpix', '2'),
(83, 'pay2m', '2'),
(85, 'pagstar', '2'),
(86, 'pagstar_client_key', 'b75fd923-9dd2-4cf4-84ad-3cee1fc2779d'),
(87, 'pagstar_client_secret', 'b75fd923-9dd2-4cf4-84ad-3cee1fc2779d'),
(88, 'openpix_webhook_url', 'https://thiagoaraujoofc.com/webhook.php?notify=openpix'),
(89, 'pagstar2', '2'),
(90, 'Pagstar_webhook_url', ''),
(91, 'ezzepay', '2'),
(92, 'ezzepay_client_id', ''),
(93, 'ezzepay_client_secret', ''),
(94, 'nextpay', '2'),
(95, 'nextpay_client_id', '1jipgid7uf5jaielfphfjihaqs'),
(96, 'nextpay_client_secret', 'hvl6rnsis9u62jfco51053hjku2mah2u3vejkivc72jcilddn7q'),
(97, 'nextpay_webhook', 'https://miguelcash.com/webhook_next.php'),
(98, 'ativopay', '2'),
(99, 'ativopay_client_id', ''),
(100, 'ativopay_client_secret', ''),
(101, 'ativopay_webhook', 'https://rifasortepremiada.com/webhook_ativopay.php'),
(102, 'pay2m_webhook_url', 'https://rifasortepremiada.com/webhook.php?notify=pay2m'),
(103, 'paggue_webhook_url', 'https://rifasortepremiada.com/webhook.php?notify=paggue'),
(104, 'ezzepay_webhook_url', 'https://rifasortepremiada.com/webhook.php?notify=ezzepay'),
(105, 'ativopay_webhook_url', 'https://rifasortepremiada.com/webhook.php?notify=ativopay'),
(106, 'bestfy', '2'),
(107, 'bestfy_client_id', ''),
(108, 'bestfy_client_secret', ''),
(109, 'bestfy_webhook', 'https://miguelcash.com/webhook_bestfy.php'),
(110, 'phpay', '2'),
(111, 'phpay_client_id', 'aed12153-7697-40a9-8118-2149ac054aae'),
(112, 'phpay_client_secret', '49b51e55-2d21-49ad-81cc-7cc86d8280e7'),
(113, 'phpay_webhook', 'https://miguelcash.com/webhook.php?notify=phpay'),
(114, 'kapay_client_id', 'aed12153-7697-40a9-8118-2149ac054aae'),
(115, 'kapay_client_secret', '4cc4e08c-a799-4748-a30e-2c9f909b12ad'),
(116, 'kapay_webhook', 'https://demo.3rifas.com/webhook.php?notify=kapay'),
(117, 'kapay', '2'),
(118, 'pixup', '2'),
(119, 'pixup_client_id', ''),
(120, 'pixup_client_secret', ''),
(121, 'pixup_tax', ''),
(122, 'gateway_password', 'minhasenha123'),
(123, 'nivuspay', '1'),
(124, 'nivuspay_api_key', 'pk_live_mcgimy92_a7489bbe85265f393c76ec69cc23a809cc7e6fb724db25722ac60b54cb077bff'),
(125, 'nivuspay_tax', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` text DEFAULT NULL,
  `site` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Despejando dados para a tabela `users`
--


--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id_2` (`order_id`,`product_id`,`quantity`,`price`);

--
-- Índices de tabela `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_list_index` (`product_id`,`order_numbers`(64),`code`);

--
-- Índices de tabela `page_view`
--
ALTER TABLE `page_view`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Índices de tabela `referral_transactions`
--
ALTER TABLE `referral_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT de tabela `page_view`
--
ALTER TABLE `page_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `referral_transactions`
--
ALTER TABLE `referral_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `customer_id_fk_cl` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id_fk_cl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id_fk_oi` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id_fk_oi` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `customer_id_fk_ol` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `customer_id_fk_re` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
