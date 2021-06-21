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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'nagrivan' );

/** MySQL database password */
define( 'DB_PASSWORD', 'FuckingPassword' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2E&bu@?V.V=6YdonlIM(D9kv-hH1??qE:B=fkvP OQO*& 3g|?D99yXH!.Wz1MGc' );
define( 'SECURE_AUTH_KEY',  'A;ZAxw`=nXBG]Wzm;yxmCh<{)o!H02IlRQlI^Z]q$uKzEn;M@4s(ENg7TBxPR)5F' );
define( 'LOGGED_IN_KEY',    ']c,Q}mB <*F2kTo{)<Tr|BeHEu#NnP1DH[jZ_d=0o_Kj&6{QdN7{C!<v,G,Gq;cV' );
define( 'NONCE_KEY',        '=VX0j*`&rJe4`3<r0H1uael?^_My<l-7@VVm :OP{mXI-R6*`iBAuGS^%/V_l2JA' );
define( 'AUTH_SALT',        '*EB(Zg(@=$R]~T<SEmx~Q)lPZ^/ej9x+XAukR2DQj5WayYq+SU5tAq|2MMhQr]~~' );
define( 'SECURE_AUTH_SALT', '&l:pk)0C5#1Tp4;vq,2V<%>5wb1b~Px&LZWW1F6k*$S@rHo~58!IHK9fN147rEp|' );
define( 'LOGGED_IN_SALT',   'lKu~&Zv<W;zwLS 4at~d:jUnoB-l9FggpL9VPkB/)M8av&4r=cu;-gKIA7Imi7Lv' );
define( 'NONCE_SALT',       'B G|n+Nk,]~{01AG#Mw]d& 2+(|Xbu[N.+h@~CF{u:FD~_p(e{=[jt*0ufF4uu=f' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
