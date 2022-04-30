# MealWise


## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
MealWise is an application that provides a platform for people to decide what to eat and share their meals. Through creating a free account, users are able to decide what to eat by using the random food generator, to post their meals, and to view and comment on other users’ posts.

### App Evaluation

- **Category:** Food/Lifestyle
- **Mobile:** Camera, push
- **Story:** An excellent meal helper and recorder.
- **Market:** Anyone who enjoys having or sharing delicious food can use the app. Users who love cooking may find this app more helpful.
- **Habit:** Users can  post their food every day as a way of recording their lives. Users can leave comments on each other's posts. Very habit forming!
- **Scope:** The app should include 1) a log-in function so that users can post texts and pictures 2) a backend database to store users' posts 3) a table view to upload photos 4) a table view to show posts and comments of users. 

## Product Spec

### 1. User Stories (Required and Optional)
<img src="http://g.recordit.co/FLGR4T5Y5B.gif" width = 250><br>
<img src="http://g.recordit.co/zv4sMLGBsq.gif" width = 250><br>
<img src="http://g.recordit.co/0Rfs2gY4Fa.gif" width = 250><br>
<img src="http://g.recordit.co/HXCA6Pz6V2.gif" width = 250><br>

**Required Must-have Stories**

- [x] Users can register new accounts.
- [x] Users can login.
- [x] Users can see app icon in Home Screen and styled Launch Screen.
- [x] Users can log out.
- [x] Users can stay logged in across restarts.
- [x] Users can take a photo, add a caption, and post them to the server.
- [x] Users can see all the posts.


**Optional Nice-to-have Stories**
- [x] Users can add new comments
- [x] Users can view comments on a post
- [x] Users can use the random food generator.
- [x] Keyboard will dismiss whenever users finish inputting 
- [x] Comment input box will be cleared and dismiss whenever users finish posting or closing keyboard
* Users can see recommended recipes.
* Users can create their own recipes.
* Users can search for recipes.
* Users can see their profile page with their photos.
* Users can go to the setting page to choose their preferences.

### 2. Screen Archetypes

* Login and Registration Screen
   * Users can login.
   * Users can register new accounts.
* Stream Screen
   * Users can see all the posts.
   * Users can like and comment on a post. (optional)
* Creation Screen
   * Users can post photos.
* Random Food Screen
   * Users can use the random food generator.
* Recipes Screen 1 (Optional)
   * Users can see recommended recipes.
   * Users can search for recipes.
* Recipes Screen 2 (Optional)
   * Users can create their own recipes.
* Profile Screen (Optional)
   * Users can see their profile page with their photos.
* Settings Screen (Optional)
   * Users can go to the setting page to choose their preferences.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Stream Screen
* Recipes Screen (Optional)
* Profile Screen (Optional)

**Flow Navigation** (Screen to Screen)
* Login and Registration Screen
  * Stream Screen
* Stream Screen
  * Creation Screen
  * Random Food Screen
* Creation Screen
  * Stream Screen
* Random Food Screen
  * Stream Scren
* Recipes Screen 1 (Optional)
  * Recipe Screen 2 (Optional)
* Recipes Screen 2 (Optional)
  * Recipe Screen 1 (Optional)
* Profile Screen (Optional)
  * Setting Screen (Optional)
* Settings Screen (Optional)
  * Profile Screen (Optional)

## Wireframes

<img src="https://github.com/BugFarmers/MealWise/blob/main/Wireframe.jpeg" width=600>





### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
### Models
#### User
| Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user (default field) |
   | username        | String| name of the user |
   | password |String | password of the user's account
   | image         | File     | profile photo of the user | 
   
#### Post
   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| image author |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by author |
   | createdAt     | DateTime | date when post is created (default field) |
   
#### Recipe
   |  Property  |  Type    |  Description     |
   |  --------  |  -----   |  --------------- |
   | objectId      | String   | unique id for the recipe (default field) |
   |  title     |  String  |  name of the recipe  |
   |  image     |  File    |  picture of the dishes|
   |  healthscore | Number | healthscore of the recipe|
   | dairyfree    |  Boolean | whether the recipe is dairyfree
   | glutenfree   |  Boolean | whether the recipe is glutenfree
   


### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
* Home Feed Screen
    * (Read/GET) Query all posts where user is author)
    * (Create/POST) Create a new comment on a post
    ```swift:
    let query = PFQuery(className:"Post")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.includeKeys(["author", "comments", "comments.author"])
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error { 
          print(error.localizedDescription)
       }else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
      // TODO: Do something with posts...
       }
    }
    ```
* Create Post Screen
    * (Create/POST)Create a new post object


