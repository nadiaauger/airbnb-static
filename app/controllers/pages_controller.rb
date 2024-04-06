require "open-uri"


class PagesController < ApplicationController
  def home
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)

  end
end
