require 'pry'
require 'nokogiri'
require 'open-uri'
require 'rest-client'

class Scraper
  def scrape_wikipedia_books
    # use nokogiri to scrape https://en.wikipedia.org/wiki/Book
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Book'))
    otherdoc = RestClient.get("https://wendysapi.com/quotes")
    # binding.pry

    # puts "### Search for nodes by css"
    # doc.css('nav ul.menu li a', 'article h2').each do |link|
    #   puts link.content
    # end
    #
    # puts "### Or mix and match."
    # doc.search('nav ul.menu li a', '//article//h2').each do |link|
    #   puts link.content
    # end
  end
end

Scraper.new.scrape_wikipedia_books
