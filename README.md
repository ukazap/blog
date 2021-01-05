# Ukaza Perdana's Blog

This repository generates what you see on my weblog (<https://ukaza.perdana.dev>).

## Setup

This blog setup is powered by a static site generator called [Nanoc](https://nanoc.ws/).

The frontend assets are kept to a minimum:
- [Milligram CSS](https://milligram.io/)
- [Turbo](https://turbo.hotwire.dev/)
- [Utterances](https://utteranc.es/)

## Usage

To use this, you need to install Ruby 2.6 or above. When that done, clone this repo and run `bundle install`.

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
