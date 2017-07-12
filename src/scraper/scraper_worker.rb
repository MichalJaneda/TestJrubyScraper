require 'celluloid'

module Scraper
  class ScraperWorker
    include Celluloid

    def scrape
      puts 'scraping'
    end
  end
end