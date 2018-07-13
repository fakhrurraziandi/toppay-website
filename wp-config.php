<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'yBY(S>2p.Bul~DyaL!KPlvucQtr`>)=N<kWl9^qX bFP VI7Q6PsS_V=RT)wc>rn');
define('SECURE_AUTH_KEY',  'l#mWWG@}wpJ~JHRP0?OPRqn$X%TWL<LCG*saDvvJ<?9e/<]T`>k2O8]?6[_|wW8.');
define('LOGGED_IN_KEY',    'nV15;q}~0/2UWd{!qJ5f+3>/Du0>^?>mTB^A7-W|`3_AaW:Cx]}.`xU+B[6v5>/7');
define('NONCE_KEY',        '44~l*QtT#D@v+l*pn!JeUX%^V0#aJ|j|k4PS[|G3.xAGMmKx*%#SZ,ne?QCghhMh');
define('AUTH_SALT',        'oEfMV3|Jh!jf}@w/I5mkQ5?GM)8GY(TRhOYf21GDJvayd]0[iD:>QU*{w;mdR~Kn');
define('SECURE_AUTH_SALT', '<X&,Rd[]072-#{odmARxDcT{TvmBJ9F4Z$6b|S1a]^zoA^nN^K-x}Drd);<W Mi*');
define('LOGGED_IN_SALT',   ')<_<nYD9e2dbR{m>lx*JTZUALEe;r]t7KxK6peG`&[c4WCRuc;-ovQyDv)&TKWe#');
define('NONCE_SALT',       'ppahck<C]+T]!&RMz(()6F[PV1$ctf{|^yo2?*IP*E&/<r7&e6DPQ3{XLCt1S0O,');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
