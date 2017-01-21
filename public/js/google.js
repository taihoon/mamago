class Google {
	constructor() {
		this._url = "";
		this._token = "";
		this._config = { source: "en", target: "ko" };
	}

	token() {
		return superagent.get("/tokens/google")
			.then((data) => {
				this._url = data.body.url;
				this._token = data.body.token;
			});
	}

	translate(text) {
		return superagent.get(this._url)
			.query({key: this._token})
			.query(this._config)
			.query({q: text})
			.then(data => {
				return data.body.data.translations.map(translation => translation.translatedText).join(" ");
			});
	}
}
