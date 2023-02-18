window.WebChat.default({
	title: "DHL bot",
	subtitle: "Say hi to start conversation",
	customData: { language: "en" },
	socketUrl: "http://localhost:5005",
	cors:{
		origin:'*',
		credentials:true
	 },
	onSocketEvent : {
			'bot_uttered': () => console.log('the bot said something'),
			'connect': () => console.log('connection established'),
			'disconnect': () => doSomeCleanup(),
	}
	// add other props here
}, null);
localStorage.clear();