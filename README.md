# Shoe Store

#### _By Kaila Goff_

#### _An application for a fictious shoe store. 3-2-18_

## Description

_This app allows a user to add shoe stores to a database. The user is then able to add brands to those shoe stores. Once the stores and brands are created, the user can edit the names as well as delete them entirely._

### Specifications
    1. Will add new shoe store and brand to a database
      * _Example input - "Add Store: Adidas Outlet"_
      * _Example input - "Add Brand: Adidas Shelltoe"_
      * _Example output - "Stores: Adidas Outlet"_
      * _Example output - "Brands: Adidas Shelltoe"_

    2. Will allow user to view stores and brands
      * _Example input - "View Store: Nike Outlet"_
      * _Example input - "View Brand: Air Force One"_
      * _Example output - "View Store: Nike Outlet"_
      * _Example output - "View Brand: Air Force One"_

    3. Will all user to update stores and brands
      * _Example input - "Update Store: Footlocker"_
      * _Example input - "Update Brand: Jordans"_
      * _Example output - "Update Stores: Footlocker"_
      * _Example output - "Update Brands: Jordans"_

    4. Will all user to delete stores and brands
      * _Example input - "Delete Store: Running Store"_
      * _Example input - "Delete Brand: Asics"_
      * _Example output - "Deleted Stores: Footlocker"_
      * _Example output - "Deleted Brands: Jordans"_

    5. Will all user to add brands to stores
      * _Example input - "Add Brand to store: New Balance"_
      * _Example output - "Store: Footlocker Brand: New Balance"_

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

* _Do you have postgres and/or psql installed? [Download Here](https://www.postgresql.org/download/)_

* _Clone down from Github_

* _In terminal, navigate into main project directory folder shoe_store_

* _Enter:_ ``` $ bundle install ``` _into your terminal_

* _Enter:_ ``` $ rake db:migrate ``` _into your terminal_

* _Enter:_ ```$ruby app.rb``` _into your terminal_

* _In web browser of choice enter:_ ```http://localhost:4567/```


## Setup/Installation Requirements

* _Enter:_ ```$ruby app.rb``` _into your terminal_

* _In web browser of choice enter:_ ```http://localhost:4567/```


## Known Bugs

  * _No known bugs at this time._

## 📧 Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * Ruby
  * Sinatra
  * Postgres
  * pSQL
  * ActiveRecord

### License

  *MIT License*

Copyright (c) 2018 **_Kaila Goff_**
