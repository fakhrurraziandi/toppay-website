<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Toppay_v2
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

	<nav id="main-navbar" class="navbar navbar-expand-md navbar-light fixed-top bg-light">
		<div class="container">
			<a class="navbar-brand" href="<?php echo home_url() ?>"><img src="<?php echo get_template_directory_uri() ?>/assets/dist/img/toppay-dark.png" alt="" style="width: 100px;"></a>	
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">

				<?php
				$args = [
					'theme_location' => 'primary',
					'container' => 'ul',
					'menu_class' => 'navbar-nav nav ml-auto'
				]; 
				wp_nav_menu($args) 
				?>
				
			</div>
		</div>
	</nav>
