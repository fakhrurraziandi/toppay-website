<?php
/**
 * Template Name: Home Page
 */
?>

<?php get_header() ?>
	<header class="header-section">		

		<div class="header-section__pattern">
			<img src="<?php echo get_template_directory_uri() ?>/assets/dist/img/logo-icon.png" alt="<?php bloginfo('name') ?>" class="header-section__pattern__logo img-flui">
		</div>

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 offset-md-6">
					<div class="header-content">
						<img src="<?php echo get_template_directory_uri() ?>/assets/dist/img/toppay-dark.png" alt="" class="img-fluid mb-4 logo-dark">
						<img src="<?php echo get_template_directory_uri() ?>/assets/dist/img/toppay-light.png" alt="" class="img-fluid mb-4 logo-light">
						<p class="mb-4"><?php bloginfo('description') ?></p>
						<a href="#" class="btn btn-outline-primary btn-md btn-download py-3 px-3">Download Aplikasi Android <i class="fa fa-android"></i></a>
					</div>
				</div>
			</div>
		</div>	
	</header>

	<div class="about-section" id="about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<?php 
					$args = array(
				        'post_type' => 'about_content',
				        'posts_per_page' => -1,
				        'orderby' => 'post_id',
				        'order' => 'ASC',
				    );
					$the_query = new WP_Query($args); 
					?>

					<div class="toppay-tabs">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
									<a class="nav-item nav-link <?php echo $i == 0 ? 'active': '' ?>" id="nav-<?php the_ID() ?>-tab" data-toggle="tab" href="#nav-<?php the_ID() ?>" role="tab" aria-controls="nav-<?php the_ID() ?>" aria-selected="<?php echo $i == 0 ? 'true': 'false' ?>"><?php the_title() ?></a>
								<?php $i++; endwhile ?>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
								<div class="tab-pane fade <?php echo $i == 0 ? 'show active': '' ?>" id="nav-<?php the_ID() ?>" role="tabpanel" aria-labelledby="nav-<?php the_ID() ?>-tab">
									<?php the_content() ?>
								</div>
							<?php $i++; endwhile ?>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>

	<div class="function-section" id="function-section">

		<div class="function-section__pattern"></div>

		<div class="container">
			<div class="row mb-4">
				<div class="col-md-6">
					<div class="function-section__content">
						<h1>Fungsi toppay</h1>
						<p>Toppay memiliki beragam fungsi yang dapat kalian akses hingga membantu kalian dalam mengelola pembayaran. Fungsi toppay terbagi menjadi tiga bagian, yaitu fungsi pada pembayaran online, fungsi pada distribusi pembayaran, dan fungsi pada management pembayaran.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<?php 
					$args = array(
				        'post_type' => 'function_content',
				        'posts_per_page' => -1,
				        'orderby' => 'post_id',
				        'order' => 'ASC',
				    );
					$the_query = new WP_Query($args); 
					?>

					<div class="toppay-tabs">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
									<a class="nav-item nav-link <?php echo $i == 0 ? 'active': '' ?>" id="nav-<?php the_ID() ?>-tab" data-toggle="tab" href="#nav-<?php the_ID() ?>" role="tab" aria-controls="nav-<?php the_ID() ?>" aria-selected="<?php echo $i == 0 ? 'true': 'false' ?>"><?php the_title() ?></a>
								<?php $i++; endwhile ?>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
								<div class="tab-pane fade <?php echo $i == 0 ? 'show active': '' ?>" id="nav-<?php the_ID() ?>" role="tabpanel" aria-labelledby="nav-<?php the_ID() ?>-tab">
									<?php the_content() ?>
								</div>
							<?php $i++; endwhile ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="service-section" id="service-section">

		<div class="service-section__pattern"></div>

		<div class="container">
			<div class="row mb-4">
				<div class="col-md-6 offset-md-6">
					<div class="service-section__content">
						<h1>Layanan toppay</h1>
						<p>Toppay merupakan aplikasi yang diperuntukkan sebagai aplikasiyang dapat membantu kalian dalam membayar secara online, sehingga memiliki fungsi pembayaran online. Tidak hanya pencatatan pemasukan dan pengeluaran, toppay juga didukung dengan fungsi pembayaran online yang memudahkan para pengguna yang dalam hal ini disebut “tertagih/ member" dan “kolektor/admin”. </p>

						<p>“tertagih/member” akan mendapatkan notifikasi tagihan dari “kolektor/admin” yang diikuti dengan berbagai macam pilihan pembayaran melalui beberapa saluran seperti direct transfer, virtual account transfer, credit card & retail payment</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<?php 
					$args = array(
				        'post_type' => 'service_content',
				        'posts_per_page' => -1,
				        'orderby' => 'post_id',
				        'order' => 'ASC',
				    );
					$the_query = new WP_Query($args); 
					?>

					<div class="toppay-tabs">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
									<a class="nav-item nav-link <?php echo $i == 0 ? 'active': '' ?>" id="nav-<?php the_ID() ?>-tab" data-toggle="tab" href="#nav-<?php the_ID() ?>" role="tab" aria-controls="nav-<?php the_ID() ?>" aria-selected="<?php echo $i == 0 ? 'true': 'false' ?>"><?php the_title() ?></a>
								<?php $i++; endwhile ?>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
								<div class="tab-pane fade <?php echo $i == 0 ? 'show active': '' ?>" id="nav-<?php the_ID() ?>" role="tabpanel" aria-labelledby="nav-<?php the_ID() ?>-tab">
									<?php $type = get_field('type');  ?>

									<?php if($type == 'content') the_field('content') ?>

									<?php if($type == 'slider'): ?>
										<div class="owl-carousel inner-carousel">
											<?php for($i = 1; $i < 5; $i++): ?>
												<?php if(!empty(get_field("slide_{$i}_content"))): ?>
													<div>
														<?php echo get_field("slide_{$i}_content") ?>
													</div>
												<?php endif ?>
											<?php endfor ?>
										</div>
									<?php endif; ?>
								</div>
							<?php $i++; endwhile ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="advantages-section" id="advantages-section">

		<div class="advantages-section__pattern"></div>

		<div class="container">
			<div class="row mb-4">
				<div class="col-md-6 text-white">
					<h1>Kelebihan toppay</h1>
					<p class="ml-4 pl-4">Toppay juga merupakan aplikasi yang menawarkan berbagai kelebihan yang mampu membuat kalian terbantu dalam mengelola keuangan. Toppay memiliki tiga kelebihan utama, yaitu pengelolaan dalam laporan keuangan kalian dengan basis teknologi, verifikasi pembayaran, serta penggunaan secara komperhensif. </p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<?php 
					$args = array(
				        'post_type' => 'advantage_content',
				        'posts_per_page' => -1,
				        'orderby' => 'post_id',
				        'order' => 'ASC',
				    );
					$the_query = new WP_Query($args); 
					?>

					<div class="toppay-tabs">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
									<a class="nav-item nav-link <?php echo $i == 0 ? 'active': '' ?>" id="nav-<?php the_ID() ?>-tab" data-toggle="tab" href="#nav-<?php the_ID() ?>" role="tab" aria-controls="nav-<?php the_ID() ?>" aria-selected="<?php echo $i == 0 ? 'true': 'false' ?>"><?php the_title() ?></a>
								<?php $i++; endwhile ?>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
								<div class="tab-pane fade <?php echo $i == 0 ? 'show active': '' ?>" id="nav-<?php the_ID() ?>" role="tabpanel" aria-labelledby="nav-<?php the_ID() ?>-tab">
									<?php the_content() ?>
								</div>
							<?php $i++; endwhile ?>
						</div>
					</div>
				</div>
			</div>

			
		</div>
	</div>

	<div class="testimonial-section" id="testimonial-section">
		
		<div class="testimonial-section__pattern"></div>

		<div class="container">
			<div class="row my-4 py-4">
				<div class="col-md-4 offset-md-4">
					<img src="<?php echo get_template_directory_uri() ?>/assets/dist/img/toppay-dark.png" alt="" class="img-fluid px-4">
				</div>
			</div>
			<div class="row my-4 py-4">
				<div class="col-md-12">
					<p class="text-white text-center">Kepercayaan serta kenyamaan kalian merupakan tujuan Toppay.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<?php 
					$args = array(
				        'post_type' => 'other_content',
				        'posts_per_page' => -1,
				        'orderby' => 'post_id',
				        'order' => 'ASC',
				    );
					$the_query = new WP_Query($args); 
					?>

					<div class="toppay-tabs">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
									<a class="nav-item nav-link <?php echo $i == 0 ? 'active': '' ?>" id="nav-<?php the_ID() ?>-tab" data-toggle="tab" href="#nav-<?php the_ID() ?>" role="tab" aria-controls="nav-<?php the_ID() ?>" aria-selected="<?php echo $i == 0 ? 'true': 'false' ?>"><?php the_title() ?></a>
								<?php $i++; endwhile ?>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<?php $i = 0; while($the_query->have_posts()): $the_query->the_post(); ?>
								<div class="tab-pane fade <?php echo $i == 0 ? 'show active': '' ?>" id="nav-<?php the_ID() ?>" role="tabpanel" aria-labelledby="nav-<?php the_ID() ?>-tab">
									<?php $type = get_field('type'); ?>

									<?php if($type == 'content') the_field('content') ?>

									<?php if($type == 'slider'): ?>
										<div class="owl-carousel inner-carousel">
											<?php for($i = 1; $i < 5; $i++): ?>
												<?php if(!empty(get_field("slide_{$i}_content"))): ?>
													<div>
														
														<?php echo get_field("slide_{$i}_content") ?>
													</div>
												<?php endif ?>
											<?php endfor ?>
										</div>
									<?php endif; ?>
								</div>
							<?php $i++; endwhile ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<?php get_footer() ?>