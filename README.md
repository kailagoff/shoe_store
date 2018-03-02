# Shoe Store

#### _By Kaila Goff_

#### _An application for a fictious shoe store. 3-2-18_

## Description

_This app helps a user add and view shoes to a list.

### Specifications
    1. Will add new projects to a list
      * _Example input - "Add: Plant trees"_
      * _Example output - "Projects: Plant trees"_

    2. Will allow user to view projects
      * _Example input - "View: Projects"_
      * _Example output - "Projects : Plant trees"_

    3. Will all user to update projects
      * _Example input - "Update: Plant trees to Clean highway"_
      * _Example output - "Projects: Clean highway"_

    4. Will all user to delete projects
      * _Example input - "Delete: Plant trees "_
      * _Example output - "Projects: " " "_

    5. Will all user to add volunteer to projects
      * _Example input - "Add: Adam "_
      * _Example output - "Projects: Clean Highway Volunteer: Adam"_


#### User stories

  1. As a user, I want to be able to add, update, delete and list shoe stores.
  2. As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
  3. As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
  4. As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
  5. As a user, I want to be able to associate the same brand of shoes with multiple stores.
  6. As a user, I want to be able to see all of the brands a store sells on the individual store page.
  7. As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
  8. As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
  9. As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
  10. As a user, I want all stores and brands to be unique. There shouldn't be two entries in the database for Blundstone.
  11. As a user, I want store and brand names to have a maximum of one hundred characters.


## Install the DATABASE instructions

* _Enter into the terminal:_ ``` $postgres```

* _In the following line enter:_ ```$psql```

* _Next enter:_ ```$CREATE DATABASE volunteer_tracker;``` _to create the database_

* _To connect enter:_ ```$c\ volunteer_tracker```

* _To create the necessary tables enter the following commands:_ ```CREATE TABLE projects (id serial PRIMARY KEY, title varchar);``` _followed by_ ```CREATE TABLE volunteers (id serial PRIMARY KEY, name varchar, projects_id int);```

## Setup/Installation Requirements

  * _Enter in the terminal:_ ``` $ruby app.rb```

  * _Using a web browser, type in the url_ ``` localhost:4567 ```

  * _You can also open the app with this link:_ ```(heroku link)```

## Known Bugs

  * _No known bugs at this time._

## Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * Ruby
  * Sinatra
  * Postgres
  * pSQL
  * Heroku

### License

  *MIT License*

Copyright (c) 2018 **_Kaila Goff_**
