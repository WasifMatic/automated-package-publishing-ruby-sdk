
# Getting Started with APIMATIC Calculator

## Introduction

Simple calculator API hosted on APIMATIC

## Install the Package

Install the gem from the command line:

```bash
gem install automated-package-publishing-sdk -v 1.0.27
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'automated-package-publishing-sdk', '1.0.27'
```

For additional gem details, see the [RubyGems page for the automated-package-publishing-sdk gem](https://rubygems.org/gems/automated-package-publishing-sdk/versions/1.0.27).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'apimatic_calculator'
include ApimaticCalculator
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/apimatic_calculator
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'apimatic_calculator'
include ApimaticCalculator

client = Client.new
```

### Environment-Based Client Initialization

```ruby
require 'apimatic_calculator'
include ApimaticCalculator

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/environment-based-client-initialization.md) section for details.

## List of APIs

* [Simple Calculator](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/controllers/simple-calculator.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/environment-based-client-initialization.md)

### HTTP

* [HttpResponse](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/http-response.md)
* [HttpRequest](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/WasifMatic/automated-package-publishing-ruby-sdk/tree/1.0.27/doc/date-time-helper.md)

