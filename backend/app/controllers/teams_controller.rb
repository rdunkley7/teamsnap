require 'net/http'
require 'json'

class TeamsController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session, only: [:create]


  def index
    begin
      @team = Team.find(params[:id])
      render json:  @team, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.to_s }, status: :not_found
    end
  end

  def list
    @teams_list = Team.all
    render json: @teams_list
  end

  def create
    new_team = Team.create(team_name: params[:team_name], captain_first: params[:captain_first], captain_last: params[:captain_last])
    if new_team.save
      render json: new_team
    else
      render json: { error: "unable to create team" }, status: :not_found
    end
  end

  # redirect to the giphy url to dipslay the gif!
  def gif
    q = params[:team_name]
    api_key = 'r9tTc0B4mBp7CPtOAgmKDBBTsDvzl5mV'
    url = "http://api.giphy.com/v1/gifs/search?q=#{q}&api_key=#{api_key}&limit=1"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    gif_url = result['data'][0]['url']
    redirect_to gif_url
  end
end
