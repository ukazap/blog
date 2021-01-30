require 'digest'

use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::Blogging

def format_date(date)
  if date.respond_to? :strftime
    date.strftime('%d %b %Y')
  else
    Date.parse(date).strftime('%d %b %Y')
  end
end

# Fingerprinting for cache busting
# https://gist.github.com/ddfreyne/ef87bc498ec9639b0102d108af92c96c
def fingerprinted_name(identifier)
  fp = calculate_fingerprint(identifier)
  name_parts = identifier.split(".")
  name_parts[-2] = "#{name_parts[-2]}-#{fp}"
  name_parts.join(".")
end

def calculate_fingerprint(pattern)
  contents = @items.find_all(pattern).map do |item|
    item.binary? ? File.read(item[:filename]) : item.raw_content
  end

  Digest::SHA1.hexdigest(contents.join(""))[0..15]
end
