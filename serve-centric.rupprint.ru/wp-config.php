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
define( 'DB_NAME', 'cupprintru' );

/** MySQL database username */
define( 'DB_USER', 'cupprintru' );

/** MySQL database password */
define( 'DB_PASSWORD', '2019ru$$' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
define('FS_METHOD', 'direct');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6%G?H<BS*muGcVovt8:(t?(qc7zE4v6,|klXkFk&LIYO3}~^cleS[*{f`UY=_;Pm');
define('SECURE_AUTH_KEY',  '=?@(iSo|ndqEH[qtO<km2DhpOwyj4H,=26C!|0V<:^6^%8{o~x:e<qc|L!_^f*o:');
define('LOGGED_IN_KEY',    '|vzP7i=>K[N+<sK,dA-rF5+6|~NX&xf31dE9*WUY=%QH#P8e+pfm3o]n>%hRU{Hv');
define('NONCE_KEY',        'r*?:^f{|.bRappu-*tv`G,+P,ltd*v=7`{QKI{#IVFk@;M4q`EN0zF $f#-!_`%s');
define('AUTH_SALT',        '$:$Vn4A)Nj/,>&k-!X.xe^bXt8OTEiMf{3*=.PcEE2L^?Slj@1rNXp3Gj|bMkwGm');
define('SECURE_AUTH_SALT', '#6l3(6Y^l*R3E8<f7+1.Kj;&{btOAgmaHN4cT[t[`6QbaX0`@9SHQhpxK95sv`((');
define('LOGGED_IN_SALT',   '~@oxGCx0-(#k#,ConQ(FDI(;dI$,A:f6<_E;0;5nN1L=nlftbN5-_D`bxD8)~Hs|');
define('NONCE_SALT',       'a>7%PBjNa~?>NT+c0]*db2E8{_PQx8v_d7_<Gb!B ;!q>F@buI2CSKcq (mzx|_|');

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
