class StaticController < ApplicationController
  def index
    file_path = Rails.root.join('app', 'assets', 'text.json')
    file_contents = File.read(file_path)
    data = JSON.parse(file_contents)

    @yoga_title = data["yoga"]["title"]
    @yoga_description = data["yoga"]["description"]
    @pole_dance_title = data["pole_dance"]["title"]
    @pole_dance_description = data["pole_dance"]["description"]
  end
end
