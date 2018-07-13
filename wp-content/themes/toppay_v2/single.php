<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Toppay_v2
 */

get_header();
?>

	<div class="blog-section">
		<div class="container">
			<div id="primary" class="row content-area">
				<main id="main" class="col-md-8 site-main">

					<?php
					while ( have_posts() ) :
						the_post();

						get_template_part( 'template-parts/content', get_post_type() );

						the_post_navigation();

						// If comments are open or we have at least one comment, load up the comment template.
						if ( comments_open() || get_comments_number() ) :
							comments_template();
						endif;

					endwhile; // End of the loop.
					?>
				</main>

				<aside class="col-md-4">
					<?php get_sidebar(); ?>
				</aside>
			</div>
		</div>
	</div>

<?php
get_footer();
