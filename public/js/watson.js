class Watson {
	constructor() {
		this._url = "";
		this._token = "";
	}

	token() {
		return superagent.get("/tokens/watson")
			.then((data) => {
				this._url = data.body.url;
				this._token = data.body.token;
			});
	}

	recognizeMicrophone() {
		const stream = WatsonSpeech.SpeechToText.recognizeMicrophone({token: this._token});
		stream.setEncoding("utf8");
		return stream;
	}
}