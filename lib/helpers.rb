require 'digest'

use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::Blogging

def format_date(date)
  Date.parse(date).strftime('%d %b %Y')
end

# Fingerprinting for cache busting
def calculate_fingerprint(filename)
  sha256 = Digest::SHA256.file File.join("content", filename)
  sha256.hexdigest
end

def fingerprinted_name(identifier)
  fp = calculate_fingerprint(identifier)
  name_parts = identifier.split(".")
  name_parts[-2] = "#{name_parts[-2]}-#{fp}"
  name_parts.join(".")
end
