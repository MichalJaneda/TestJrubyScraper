require 'getoptlong'

require_relative 'src/scraper/dispatcher'

opts = GetoptLong.new(['--debug', '-d', GetoptLong::NO_ARGUMENT])

$CELLULOID_DEBUG = false
opts.each do |opt, arg|
  case opt
    when '--debug'
      $CELLULOID_DEBUG = true
  end
end

return

scraper = Scraper::Dispatcher.new
scraper.run