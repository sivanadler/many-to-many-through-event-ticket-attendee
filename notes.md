# Notes on changes
## Goals:
1) Fix bugs in assessment
2) Make this challenge harder

## Bugs:
1.Bug: Instructions and challenge differ on asking for name/first and last name.
  Fix: removing the template from the challenge.

## Ways to make it harder:
1. Add a has-many to has-many relationship and methods related to it
2. Take out the basic set-up from the models so they're not clued into what the attr_accessors might be vs the methods they should be building
3. Add more difficult Ruby functionality RATHER than focusing on the relationship bit. 

## Current domain model:

Viewer:
 - has many ratings
 - has many movies through ratings
 
Movies:
 - has many ratings
 - has many viewers through ratings
 
Ratings:
 - belongs to viewers
 - belongs to movies


## Proposed domain model:

Viewer:
  - has many watchlists
  - has many movies through watchlists
  - has many genres through movies
  
Movies:
  - has many watchlists
  - has many viewers through watchlists
  - belongs to genre
  
Watchlist:
  - belongs to viewers
  - belongs to movies
  - has many genres through movies
  
Genres:
  - has many movies
  - has many watchlists through movies
  - has many viewers through watchlists
  
*Note*: Watchlist contains ratings for movies but a movie can be added without a rating.
