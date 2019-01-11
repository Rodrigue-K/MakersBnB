# MakersBnB

[![Build Status](https://travis-ci.org/Sindex42/MakersBnB.svg?branch=master)](https://travis-ci.org/Sindex42/MakersBnB)

## Makers Academy - 3 day Group Project

A web app that lets hosts offer up a list of spaces to rent and lets renters rent them out


## User stories

```
As a user 
So that I can start renting out spaces
I would like to be able to sign up

As a user 
So that I can continue renting spaces
I would like to be able to sign in 

As a user 
So that I can continue using the website
I would like to be able to stay signed in

As a host
So that I can rent out a space
I would like to list a space

As a host
So that I can rent out all my spaces
I would like to list multiple spaces

As a host
So that I can track different spaces
I would like to be able to name my space

As a host
So that I can encourage uptake of my space
I would like to provide a short description of my space

As a host
So that I can charge customers 
I would like to list a price per night

As a host 
So my space can be rented as much as possible
I would like to be able to offer a range of dates where the space is available

As a renter
So that I can have somewhere to sleep
I would like to be able request to hire a space for one night

As a host
So that I can vet people 
I would like to be able to approve a renter's request

As a renter
So I know when a space is unavailable
I would like to not be able to book that space

As a host 
So that my space can be rented as long as possible
I would like spaces to be available until booking is confirmed
```

## Getting started

1. Clone this repo `git clone git@github.com:Sindex42/MakersBnB.git`
2. Change directory `cd MakersBnB`
3. Run bundle to install dependencies `bundle install`

### Setting up the databases

1. Install postgresql `brew install postgres`
2. Create the development database `createdb makers_bnb_development;`
3. Create the test database `createdb makers_bnb_test;`
4. Set up the tables `db:auto_migrate`

### Running tests

1. Run rackup to start the server `rackup`
2. Open up a browser and navigate to the following page [http://localhost:9292](http://localhost:9292)
3. Run the tests with `rspec` in the project root folder

