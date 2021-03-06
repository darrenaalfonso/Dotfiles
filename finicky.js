module.exports = {
  defaultBrowser: "Google Chrome",
  handlers: [
    {
      match: finicky.matchHostnames([
        "youtube.com", // match domain as string (to make regular expression less complicated)
        /.*\.youtube.com$/, // match all subdomains
        "spotify.com",
        /.*\.spotify.com$/,
        "news.ycombinator.com",
	"youtu.be",
	"smile.amazon.com",
	"streamable.com",
      ]),
      //browser: "Firefox"
      //browser: "Google Chrome Canary"
      //browser: "Microsoft Edge Canary"
      browser: "Microsoft Edge"
    },
  ]
};
