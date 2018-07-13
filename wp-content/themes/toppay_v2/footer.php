<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Toppay_v2
 */

?>

<footer class="footer-section">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<p><?php echo get_custom('copyright_text'); ?></p>
				<a href="<?php echo get_custom('facebook_url') ?>"><i class="fa fa-facebook fa-2x mr-2 text-white"></i></a>
				<a href="<?php echo get_custom('twitter_url') ?>"><i class="fa fa-twitter fa-2x mr-2 text-white"></i></a>
				<a href="<?php echo get_custom('google_plus_url') ?>"><i class="fa fa-google-plus fa-2x mr-2 text-white"></i></a>
			</div>
			<div class="col-md-4">
				<dl>
					<dt>Email Address</dt>
					<dd><?php echo get_custom('email_address') ?></dd>
					<dt>Phone</dt>
					<dd><?php echo get_custom('phone') ?></dd>
					<dt>Alamat</dt>
					<dd><?php echo get_custom('alamat') ?></dd>
				</dl>
			</div>
			<div class="col-md-4">
				<?php
				$args = [
					'theme_location' => 'footer',
					'container' => 'ul',
					'menu_class' => 'footer-menu'
				]; 
				wp_nav_menu($args) 
				?>
			</div>
		</div>
	</div>
</footer>

<?php wp_footer(); ?>

</body>
</html>
