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
define('DB_NAME', "wordpress");

/** MySQL database username */
define('DB_USER', "wordpress");

/** MySQL database password */
define('DB_PASSWORD', "9eaa9f7337c530f4399d406afb141d5d1172ae9de2bab221");

/** MySQL hostname */
define('DB_HOST', "localhost:3306");

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

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
define('AUTH_KEY',         'zs0UBS(B5zdvG}a X{ZL.*rN:wTyC@=PBu.!3w&A3Q-L1>ok]],nE;,xrW1f|Wd4');
define('SECURE_AUTH_KEY',  'jh of tpJ|)33hCmHWGL({&]]a,p4$wIz8opP+B3Za#i%xK4TWxiu>0Lo,-SbqPV');
define('LOGGED_IN_KEY',    '?^|nt`GJ$NK6 J~kwj* L;Br;{l@ZesF1LwS4-n;XS|l3)G65`G05%Q5!JTXVTt`');
define('NONCE_KEY',        'O{5XgiCrZC1(qY_+lkAGJ@Gc; ]JpQ8^tSpAA|_%d`(._kx7e!I[X&39+iPfce%n');
define('AUTH_SALT',        '?g-]D_a@u|ESfRI<c9na3&iMki)s}h&hY:t*uTs{IaO ;*@<8Q3oZ=ad:S39inn-');
define('SECURE_AUTH_SALT', '-vNv:+2>X8-]|nm3>rdi2f^7fm~<h4wu2gGHG[*W3+K,}t+Ea/w}n+g[q||%9Yok');
define('LOGGED_IN_SALT',   '{HV%xlCgo&|>]yp^3O0)kD2--QUr~SVTgm,&*Gb{82ZaW{^|mh/+x*YSM=[Oz.,v');
define('NONCE_SALT',       '9MJJ1~?TK1AT#v,]C;1kg-*wDWzZ[HF:ou#Qp-U:!I54/@~D5k 7-F.0U[Vy{Q|!');

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
#define('WP_DEBUG', false);
# 2019-08-25 David Kelly - troubleshooting the user forgot password mail function
$debugFlag=0;
if ($debugFlag){
    define( 'WP_DEBUG', true );
    define( 'WP_DEBUG_LOG', true );
    define( 'WP_DEBUG_DISPLAY', true );
    @ini_set( 'display_errors',1 );
}
else{
    define('WP_DEBUG', false);
}

#echo WP_DEBUG;
#die();

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
