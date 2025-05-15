# Chaos Fortress Plugin

This is a [OWASP CRS](https://coreruleset.org) Web Application Firewall plugin that attempts to break the HTTP feedback loop for attackers, effectively making adversarial machine learning way harder when facing the WAF.

It does this by delaying attacking requests and by sending random status codes instead of the standard 403.

**CAVEAT**: Do not use Chaos Fortress unless you are 100% sure you do not have any false positives on a WAF service. Users hitting false positives will be maltreated by Chaos Fortress.

Original author: Christian Folini / [dune73](https://github.com/dune73).

Presentation about this plugin at GoHack Zurich 2024: [Slides](https://www.slideshare.net/slideshow/using-a-waf-to-make-the-life-of-bug-bounty-hunters-miserable/273337644)

See [https://github.com/coreruleset/plugin-registry](https://github.com/coreruleset/plugin-registry) for documentation about CRS plugins.

### Features

* 3 Levels of chaos. Default level (1) usually blocks with 403, but sometimes responds with different status code. Level (2) brings less 403 and more other status codes. Level (3) brings wide spread of status code.
* Consistent Randomness. The same request executed repeatedly will get the same status code.
* Delay is optional and can be enabled for POST requests (= default)  or for all requests.
* Maximum delay is configurable.

### TODO
* Look into Nepenthes and try to integrate it
* Test support for chaos level 0 properly
* Test support for CRS early blocking properly
