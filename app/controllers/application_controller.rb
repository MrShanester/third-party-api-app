class ApplicationController < ActionController::API
  require 'http'

  def index
    api = Rails.application.credentials.config[:key][:api]
    file = HTTP.get("https://holidays.abstractapi.com/v1/?api_key=#{api}&country=US&year=2021&month=11&day=#{params["day"]}")
    data = file.parse(:json)

    if data != []
      render json: data.as_json
    else 
      render json: {message: "There are no US holidays on November #{params["day"]}"}
    end
  end

  def show
    api = Rails.application.credentials.config[:key][:api]
    file = HTTP.get("https://holidays.abstractapi.com/v1/?api_key=#{api}f2&country=US&year=2021&month=11")
    data = file.parse(:json)

    render json: data.as_json
  end
end
