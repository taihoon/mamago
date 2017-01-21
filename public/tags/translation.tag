<translation>
	<div id="speech" class="section speech">
		<div class="spinner"></div>
		<div class="message" if="{ !source }">Now You Speak!</div>
		<div class="message">{ source }</div>
		<div class="message">{ target }</div>
	</div>

	<script>
		this.on("update", () => {
			this.source = this.opts.source;
			this.target = this.opts.target;
		});
	</script>

	<style>
		.message {
			margin: 20px auto;
			font-size:30px;
			color: #fff;
			text-align: center;
		}

		.spinner {
			width: 40px;
			height: 40px;
			margin: 33% auto 20px auto;
			background-color: #fff;

			border-radius: 100%;
			animation: sk-scaleout 1.5s infinite ease-in-out;
		}

		@-webkit-keyframes sk-scaleout {
			0% { transform: scale(0) }
			100% {
				transform: scale(1.0);
				opacity: 0;
			}
		}

		@keyframes sk-scaleout {
			0% {
				transform: scale(0);
				transform: scale(0);
			} 100% {
				transform: scale(1.0);
				transform: scale(1.0);
				opacity: 0;
			}
		}
	</style>
</translation>
