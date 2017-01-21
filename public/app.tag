<app>
	<welcome hide="{ token }"></welcome>
	<translation show="{ token }"></translation>

	<script>
		this.token = false;
		this.on("mount", () => {
			const { watson, google } = this.opts;
			const { translation } = this.tags;

			Promise.all([
				watson.token(),
				google.token()
			]).then(() => {
				this.token = true;
				this.update();
			}).then(() => {
				let stream = watson.recognizeMicrophone();
				stream.on("data", source => {
					translation.opts.source = source;
					this.update();
					google.translate(source).then(target => {
						translation.opts.target = target;
						this.update();
					});
				});
			});
		});
	</script>
</app>
