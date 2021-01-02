require "highline/import"
require "gingerice"

desc "Create a new article"
task :compose do |t|
  directory "./content/articles"

  say "So you want to write a new article, eh?"

  title = ask("What will be the title?") { |q| q.validate = /\w+/ }
  location = ask("And where are you right now?") { |q| q.validate = /\w+/ }

  filename = (title.gsub(%r{\W}, "-")).downcase.chomp "-"
  path = "./content/articles/#{Time.now.strftime("%Y-%m-%d")}-#{filename}.md"

  if File.exist?(path) && !agree("#{path} already exists. Overwrite? (yes or no)")
    abort("rake aborted!")
  end

  open(path, "w") do |article|
    article.puts <<-ARTICLE
---
kind: article
title: #{title}
location: #{location}
created_at: #{Time.now}
---
    ARTICLE

    say "Created: #{path}"
  end
end

desc "Proofread articles"
task :proofread do |t|
  parser = Gingerice::Parser.new

  Dir.glob('content/articles/*').each do |article|
    say "Proofreading #{article}"
    text = File.read(article).split("---\n").last.strip
    sentences = text.scan(/[^\.!?]+[\.!?]/).map(&:strip) # naively split to sentences
    sentences.each do |s|
      @result = parser.parse s
    end

    pp @result
  end
end