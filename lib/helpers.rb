use_helper Nanoc::Helpers::Blogging

def format_date(date)
  Date.parse(date).strftime('%d %b %Y')
end