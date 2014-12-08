Routes
======

## Views

#### GET /
Welcome page, root route

#### GET /home
Contest homepage and lobby

#### GET /profile
User profile page

#### GET /history
View past contests and information for the user

#### GET /current
Upcoming and live contests

## API

#### GET /contests
Get all contests

#### GET /contests/:contest\_id
Get contest with id

#### GET users/:user\_id/lineups
Get all lineups for a user

#### GET /players
Get all players

#### GET /players/:player\_id
Get player with id

#### GET users/:user\_id/lineups/:lineup\_id
Get lineup with id

### Users and authentication

#### POST /login

#### POST /logout
