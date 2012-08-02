<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$LANGUAGE}"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="{$LANGUAGE}"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="{$LANGUAGE}"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="{$LANGUAGE}"> <!--<![endif]-->

<head>
	{* Meta *}
	<meta charset="utf-8" />
	<meta name="generator" content="Fork CMS" />
	{$meta}
	{$metaCustom}

	<!-- Set the viewport width to device width for mobile -->
 	 <meta name="viewport" content="width=device-width" />

	<title>{$pageTitle}</title>

	{* Favicon and Apple touch icon *}
	<link rel="shortcut icon" href="{$THEME_URL}/favicon.ico" />
	<link rel="apple-touch-icon" href="{$THEME_URL}/apple-touch-icon.png" />

	{* Stylesheets *}
	<link rel="stylesheet" href="{$THEME_URL}/core/layout/css/foundation.css" />

	{iteration:cssFiles}
		<link rel="stylesheet" href="{$cssFiles.file}" />
	{/iteration:cssFiles}

	  <script src="{$THEME_URL}/core/js/modernizr.foundation.js"></script>


	{* HTML5 Javascript *}
	<!--[if lt IE 9]> <script src="{$THEME_URL}/core/js/html5.js"></script> <![endif]-->

	{* Site wide HTML *}
	{$siteHTMLHeader}
</head>