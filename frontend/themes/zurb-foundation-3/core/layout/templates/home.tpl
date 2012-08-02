{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">

	<div class="row">
		<div class="eleven columns">
			{* Logo *}
			<div id="logo">
				<h2><a href="/">{$siteTitle}</a></h2>
			</div>
		</div>

		<div class="one columns">
			{* Language *}
			<nav id="headerLanguage">
				<div href="#" class="small button dropdown">
					{$FRONTEND_LANGUAGE}
					{include:core/layout/templates/languages.tpl}
				</div>
			</nav>
		</div>

	</div>

	<div class="row">
		<div class="twelve columns">
			{* Navigation *}
			<nav id="headerNavigation">
				<ul class="nav-bar">
					{$var|getnavigation:'page':0:2}
				</ul>
			</nav>	
		</div>
	</div>

	<div class="row">
		<div class="twelve columns">
			{* Breadcrumb *}
			<div id="breadcrumb">
				{include:core/layout/templates/breadcrumb.tpl}
			</div>
		</div>
	</div>


	<div class="row">
		{* Main Column *}
		<div class="twelve columns">
			{* Page title *}
			{option:!hideContentTitle}
				<header class="mainTitle">
					<h1>{$page.title}</h1>
				</header>
			{/option:!hideContentTitle}

			{* Main position *}
			{iteration:positionMain}
				{option:positionMain.blockIsHTML}
					<section class="mod">
						<div class="inner">
							<div class="bd content">
								{$positionMain.blockContent}
							</div>
						</div>
					</section>
				{/option:positionMain.blockIsHTML}
				{option:!positionMain.blockIsHTML}
					{$positionMain.blockContent}
				{/option:!positionMain.blockIsHTML}
			{/iteration:positionMain}
		</div>
	</div>


	<div class="row">
		{* Left Column *}
		<div class="six columns">
			{* Left position *}
			{iteration:positionLeft}
				{option:positionLeft.blockIsHTML}
					<section class="mod">
						<div class="inner">
							<div class="bd content">
								{$positionLeft.blockContent}
							</div>
						</div>
					</section>
				{/option:positionLeft.blockIsHTML}
				{option:!positionLeft.blockIsHTML}
					{$positionLeft.blockContent}
				{/option:!positionLeft.blockIsHTML}
			{/iteration:positionLeft}
		</div>

		{* Right Column *}
		<div class="six columns">
			{* Right position *}
			{iteration:positionRight}
				{option:positionRight.blockIsHTML}
					<section class="mod">
						<div class="inner">
							<div class="bd content">
								{$positionRight.blockContent}
							</div>
						</div>
					</section>
				{/option:positionRight.blockIsHTML}
				{option:!positionRight.blockIsHTML}
					{$positionRight.blockContent}
				{/option:!positionRight.blockIsHTML}
			{/iteration:positionRight}
		</div>
	</div>


	<noscript>
		<div class="row">
			<div class="twelve columns">
				<div class="alert-box alert">
					{$msgEnableJavascript}
				</div>
			</div>
		</div>
	</noscript>



	<div id="bottomWrapper">
		{include:core/layout/templates/footer.tpl}
	</div>

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	
	{*
	<script src="{$THEME_URL}/core/js/jquery.foundation.reveal.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.orbit.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.navigation.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.buttons.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.tabs.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.forms.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.tooltips.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.accordion.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.placeholder.js"></script>

	<script src="{$THEME_URL}/core/js/jquery.foundation.alerts.js"></script>
	*}

	{* Included JS Files (Compressed) *}
	<script src="{$THEME_URL}/core/js/foundation.js"></script>

	{* Initialize JS Plugins *}
	<script src="{$THEME_URL}/core/js/app.js"></script>

	{* Theme JS *}
	<script src="{$THEME_URL}/core/js/theme.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>