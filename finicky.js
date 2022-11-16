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
	// "linkedin.com",
        // /.*\.linkedin.com$/,
	"reddit.com",
        /.*\.reddit.com$/,
	"freedom.to"
      ]),
      browser: "Google Chrome Beta"
      //browser: "Firefox"
      //browser: "Microsoft Edge Canary"
      //browser: "Microsoft Edge"
    },
  ]
};
