<section id="subscribeIndex" class="mod">
	<div class="inner">
		<div class="bd">
			{option:subscribeHasFormError}<div class="alart-box alert"><p>{$errFormError}</p></div>{/option:subscribeHasFormError}
			{option:subscribeHasError}<div class="alert-box alert"><p>{$errSubscribeFailed}</p></div>{/option:subscribeHasError}
			{option:subscribeIsSuccess}<div class="alert-box"><p>{$msgSubscribeSuccess}</p></div>{/option:subscribeIsSuccess}

			{option:!subscribeHideForm}
				{form:subscribe}
					<p{option:txtEmailError} class="error"{/option:txtEmailError}>
						<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
						{$txtEmail} {$txtEmailError}
					</p>
					<p>
						<input id="send" class="button small" type="submit" name="send" value="{$lblSend|ucfirst}" />
					</p>
				{/form:subscribe}
			{/option:!subscribeHideForm}
		</div>
	</div>
</section>