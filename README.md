# Chaos Fortress Plugin

[OWASP CRS](https://coreruleset.org) plugin that attempts to break the feedback loop for attackers, effectively making adversarial machine learning way harder.

It does this by delaying attacking requests and by sending random status codes instead of the standard 403.

**CAVEAT**: Do not use Chaos Fortress unless you are 100% sure you do not have any false positives on a service. Users hitting false positives will be maltreated by Chaos Fortress.

First, I did this for fun. But now I think it might actually be useful.

Original author: Christian Folini / [dune73](https://github.com/dune73).

Presentation about this plugin at GoHack Zurich 2024: [Slides](https://www.slideshare.net/slideshow/using-a-waf-to-make-the-life-of-bug-bounty-hunters-miserable/273337644)

See [https://github.com/coreruleset/plugin-registry](https://github.com/coreruleset/plugin-registry) for documentation about CRS plugins.

### Features

* 3 Levels of chaos. Default level (1) usually blocks with 403, but sometimes responds with different status code. Level (2) brings less 403 and more other status codes. Level (3) brings wide spread of status code.
* Consistent Randomness. The same request executed repeatedly will get the same status code.
* Delay is optional and can be enabled for POST requests (= default)  or for all requests.
* Maximum delay is configurable.

### TODO
* Chaos Fortress is not compatible with early blocking.
