{option:navigation}
		{iteration:navigation}
			<li{option:navigation.selected} class="active"{/option:navigation.selected}>
				<a href="{$navigation.link}" title="{$navigation.navigation_title}"{option:navigation.nofollow} rel="nofollow"{/option:navigation.nofollow}>{$navigation.navigation_title}</a>
				{option:navigation.selected}
				{option:navigation.children}
					<ul>
				{/option:navigation.children}

				{$navigation.children}
				
				{option:navigation.children}
					</ul>
				{/option:navigation.children}
				
				{/option:navigation.selected}
			</li>
		{/iteration:navigation}
{/option:navigation}