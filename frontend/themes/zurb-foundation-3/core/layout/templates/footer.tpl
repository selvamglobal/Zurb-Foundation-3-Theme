<footer class="row">
	<div class="two columns">
		<p>&copy; {$now|date:'Y'} {$siteTitle}</p>
	</div>
	<div class="ten columns">
		<ul class="link-list">
			{iteration:footerLinks}
				<li{option:footerLinks.selected} class="selected"{/option:footerLinks.selected}>
					<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
						{$footerLinks.navigation_title}
					</a>
				</li>
			{/iteration:footerLinks}
		</ul>
	</div>
</footer>