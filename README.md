# mamago

Real-time voice translator using IBM watson and Google Translation.

## DEMO 
* It only works on desktop.
* https://mamago.mybluemix.net/ 

## Configuration

```
rename config.example.js config.js
```

Configurate 
* `YOUR_IBM_CREDENTIALS_USERNAME` and 
* `YOUR_IBM_CREDENTIALS_PASSWORD` for [IBM Bluemix](https://www.ibm.com/cloud-computing/bluemix/)
* `YOUR_GOOGLE_API_KEY` for [Google Cloud Platform](https://cloud.google.com/)

```
module.exports = {
	watson: {
		url: "https://stream.watsonplatform.net/speech-to-text/api",
		username: "<YOUR_IBM_CREDENTIALS_USERNAME>",
		password: "<YOUR_IBM_CREDENTIALS_PASSWORD>"
	},
	google: {
		url: "https://translation.googleapis.com/language/translate/v2",
		token: "<YOUR_GOOGLE_API_KEY>"
	}
};
```

## run locally
```
npm install
npm start
````

Access the running app in a browser at http://localhost:6001