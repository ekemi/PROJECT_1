require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './search/cli'
require_relative './search/scraper'
require_relative './search/job'

Cli.new.start # I  am instanciate  my Cli