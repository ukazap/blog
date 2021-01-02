use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::Blogging

def format_date(date)
  Date.parse(date).strftime('%d %b %Y')
end

# Fingerprinting for cache busting

FINGERPRINTS ||= Hash.new do |h, key|
  # Need to generate the fingerprint based on the actual hash of the file, but this will do for now.
  h[key] = SecureRandom.alphanumeric(13)
end

def fingerprinted_name(identifier)
  fp = FINGERPRINTS[identifier]
  name_parts = identifier.split(".")
  name_parts[-1] = "#{fp}.#{name_parts[-1]}"
  name_parts.join(".")
end
