# John Dailey's Project

-----Assignment1 04/04/2014-----
- Create a user and log in
- Game objects can be created
- A games index is visible yet incomplete (going to add better visuals, sorting methods, and actually expand selection).
- I have a couple extra links at the top that do not go anywhere yet (planning for the future).
- I still need to create an admin user that can create games and manage things (anyone can do anything right now).
- Still need to add mock shipping address and payment method
- When a user selects to rent a game and it is sent, update the DB and how many are in stock (maybe create an onhand variable)

-----Assignment2 04/18/2014-----
- Most of the time experimenting with Bootstrap
- Created a filter system when viewing all games(will add more)
- Ability to see each game individually and read descruption
- Added the onhand variable to games to make it different from numberinstock
- Still need to add mock shipping
- Added a Queue object to link to Users and Games
- Created admin user

-----Assignment3 05/02/2014-----
- Added shipping information to user's accounts (address, city, state, credit card info)
- Added a queue index that the user wil see as their queue list
- Got the Queue system to work
- Added a games/manage view and method so the admin can keep track of games that were shipped out (goneout variable on each List)
- Added ability to remove from Queue list
- Added the about page
- Added the coming soon page
- Added a system and image variable to Game
- Change what variables some views see
- Cleaned up the layout

-----Use the site as a User-----
1) First you will have to create an account before doing anything else(each page will redirect you if not signed in).
2) After you have signed-in/created an account, you will have access to any non-admin page.
3) If you click on the Games tab, you will be able to view and filter the entire list of games.
4) Once you see a game you are interested in, you simply click on the name of the game and it will redirect you to 
   a page that will show an image of the game and a full description of the game that includes rating.
5) If you feel like this is a game that you would want to play, you simply add it to your queue with the click
   of a button.
6) Click on the My Queue tab in order to see you entire list of games, and even remove games from this list if you wish
   (You will not see the button to remove an item that has already been shipped out to you).
7) Play your game and return it whenever you like, and once we recieve your game back, we will ship out the next item
   in your queue.
      
-----Added abilities of Admins----
- A /games/manage page is accessible by admins for an easy way to view which user each of the games has been shipped to.
- An admin can access the /games/new page in order to add a game to the inventory list.
- On the /games/index page, an admin will see the ability to import a list of games, instead of adding them one by one.

-----Additional Comments-----
- I know that i have not added the backside programming aspect of this site, but this is really just a model of the online app
  that users will see.