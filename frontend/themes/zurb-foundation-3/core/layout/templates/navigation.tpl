{option:navigation}
		{iteration:navigation}
			<li class="{option:navigation.children}has-flyout{/option:navigation.children}{option:navigation.selected} active{/option:navigation.selected}">
				<a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}>{$navigation.navigation_title}</a>
				
				{option:navigation.children}
					<a href="#" class="flyout-toggle"><span> </span></a>
					<ul class="flyout">
				{/option:navigation.children}

					{$navigation.children}

				{option:navigation.children}
					</ul>
				{/option:navigation.children}

			</li>
		{/iteration:navigation}
{/option:navigation}