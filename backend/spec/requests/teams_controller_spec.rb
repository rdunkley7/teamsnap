require "rails_helper"

RSpec.describe "/teams", type: :request do
  describe "GET /index" do
    it 'renders a successful response for valid team id' do
      Team.create(id: 1, team_name: "puffins")
      get "/teams/1"

      expect(response.status).to eq(200)
    end

    it 'renders a unsuccessful response for invalid team id' do
      get "/teams/100"

      expect(response.status).to eq(404)
    end
  end

  describe "GET /list" do
    it 'renders a successful response' do
      get "/teams"

      expect(response.status).to eq(200)
    end
  end

  describe "POST /create" do
    it 'renders a successful response' do
      post "/teams", params: {team_name: 'Koalas', captain_first: 'Kevin', captain_last: 'Fiala'}

      expect(response.status).to eq(200)
      team = Team.find_by(team_name: 'Koalas')
      expect(team).to be_present
    end

    it 'renders a failed response with missing params' do
      post "/teams", params: {team_name: 'Sharks', captain_first: 'Joel'}

      expect(response.status).to eq(404)
      team = Team.find_by(team_name: 'Sharks')
      expect(team).not_to be_present
    end
  end

  describe "GET /gif/team_name" do
    it 'redirects to giphy url with team name' do
      get "/gif/penguins"

      expect(controller.params[:team_name]).to eq("penguins")
      expect(response.status).to eq(302) #redirected
    end
  end
end
