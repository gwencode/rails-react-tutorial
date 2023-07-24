class V1::ThingsController < ApplicationController
  def index
    render json: { :things => [
      {
        :name => "some-thing",
        :guid => "1234"
      }
    ]}.to_json
  end
end
