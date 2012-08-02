{option:pagination}
	{option:pagination.multiple_pages}
		<nav class="mod pagination">
			<div class="inner">
				<div class="bd">
					<ul class="pagination">
						<li class="arrow{option:!pagination.show_previous} unavailable{/option:!pagination.show_previous}">
							<a href="{option:pagination.show_previous}{$pagination.previous_url}{/option:pagination.show_previous}" rel="prev nofollow" title="{$lblPreviousPage|ucfirst}">
								<a href="">&laquo;</a>
							</a>
						</li>

						{option:pagination.first}
							{iteration:pagination.first}<li><a href="{$pagination.first.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.first.label}">{$pagination.first.label}</a></li>{/iteration:pagination.first}
							<li class="unavailable"><a href="">&hellip;</a></li>
						{/option:pagination.first}

						{iteration:pagination.pages}
							<li{option:pagination.pages.current} class="current"{/option:pagination.pages.current}>
								<a href="{$pagination.pages.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.pages.label}">
									{$pagination.pages.label}
								</a>
							</li>
						{/iteration:pagination.pages}

						{option:pagination.last}
							<li class="unavailable"><a href="">&hellip;</a></li>
							{iteration:pagination.last}<li><a href="{$pagination.last.url}" rel="nofollow" title="{$lblGoToPage|ucfirst} {$pagination.last.label}">{$pagination.last.label}</a></li>{/iteration:pagination.last}
						{/option:pagination.last}

						<li class="arrow{option:!pagination.show_next} unavailable{/option:!pagination.show_next}">
							<a href="{option:pagination.show_next}{$pagination.next_url}{/option:pagination.show_next}" rel="next nofollow" title="{$lblNextPage|ucfirst}">
								&raquo;
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	{/option:pagination.multiple_pages}
{/option:pagination}