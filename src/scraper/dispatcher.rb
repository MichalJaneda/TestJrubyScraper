require 'celluloid'

require_relative 'scraper_worker'

module Scraper
  class Dispatcher
    include Celluloid

    def initialize(pool_size = 10)
      @pool_size = pool_size
    end

    def run
      #pool = ScraperWorker.pool(size: @pool_size)

      loop do
        puts 'Dispatched...'
        sleep(1)
      end
    end
  end
end