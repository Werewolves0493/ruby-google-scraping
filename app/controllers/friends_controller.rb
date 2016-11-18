class FriendsController < ApplicationController
  def new

    results = GoogleCustomSearchApi.search("Rails スクレイピング手法")

    results["items"].each do |item|
      puts item["title"], item["link"]
    end

  end

  def show

    agent = Mechanize.new
    # page = agent.get("https://www.google.co.jp/search?q=ffmpeg+add")
    # elements = page.search('.r')
    # puts elements
    search_page = agent.get("https://www.google.co.jp/search?q=ffmpeg+add")
    search_page.search('.r').each do |item|
      puts title = item.search('a').inner_text

    end

  end
end
