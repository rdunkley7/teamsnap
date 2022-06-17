

# Setup
1.`$ docker-compose run frontend yarn`
2. run migration & seed the database with my initial teams data.
`$ docker-compose run --rm backend bundle exec rails db:reset db:migrate db:seed`
3. `$ docker-compose up -d`
4. `$ open http://localhost:8080` # You'll see yaichi page, then click any app

# Run backend Tests
`$ docker-compose run --rm backend bundle exec rspec`

# Navigate App
Backend:
- View all teams: `$ open http://backend.localhost:8080/teams`
- View first team: `$ open http://backend.localhost:8080/teams/1`
- Create a team make POST request to: `http://backend.localhost:8080/teams` 
  - include a `team_name`, `captain_first`, and `captain_last` in the body.
- View Gif of puppy (or enter team name): `$ open http://backend.localhost:8080/gif/puppy`

Frontend: 
- Click to view frontend & click `view teams` button to see all teams.
- I did not finish implementing the frontend app or get a chance to add frontend tests.