


This project uses images provided by "7soul1" / Henrique Lazarini, under the Creative Commons Attribution 3.0 License. The source for this work is located here:
https://www.deviantart.com/7soul1/art/420-Pixel-Art-Icons-for-RPG-129892453


To set this up, ensure that 'pg' is installed and the postgres database called 'adventurer_shop' has been created (empty).
Then run the following command to seed the database:

psql -d adventurer_shop -f .\db\adventurer_shop.sql

run app.rb, and inatra will set up the webserver on localhost:4567.

Keep in mind that the root is blank, you have to go to /shop. This is an issue that needs addressed.