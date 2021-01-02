# Ukaza Perdana's Blog

This repository generates what you see on my weblog (<https://ukaza.perdana.dev>).

## Setup

This blog setup is powered by a static site generator called [Nanoc](https://nanoc.ws/).

The frontend assets are kept to a minimum: tiny stylesheets and next to no JavaScript except [Turbo](http://turbo.hotwire.dev/) for faster navigation a-la single-page apps.

## Usage

To use this, you need to install Ruby 2.7 and above.

There are several commands for managing the blog:

```sh
alias bx="bundle exec"

# Start a preview server and watch for file changes
bx nanoc live

# Create a new blog article
bx rake compose

# Proofread
bx rake proofread
```