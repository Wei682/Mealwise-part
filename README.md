# MealWise


## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
MealWise is an app where users can find recipes, create their own recipes, and post their meals.

### App Evaluation

- **Category:** Food/Lifestyle
- **Mobile:** Camera, push
- **Story:** An excellent meal helper and recorder.
- **Market:** Anyone who enjoys having or sharing delicious food can use the app. Users who love cooking may find this app more helpful.
- **Habit:**  Users can read/create the recipes every day to decide what to eat. They can also post their food every day as a way of recording their lives. Very habit forming!
- **Scope:** The app should include 1) a log-in function so that users can post texts and pictures 2) a backend database to store users' posts and own recipes 3) a table view to display recipes grabbed from API. One difficulty of building this app may be grabbing the recipe API and displaying it. It would be ideal if the app can show recipes according to what users have searched. If we can't do this, we can just display a list of recipes instead.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [x] Users can register new accounts.
- [x] Users can login.
- [x] User sees app icon in home screen and styled launch screen.
- [x] User can log out.
- [x] User stays logged in across restarts.

<img src="http://g.recordit.co/0Rfs2gY4Fa.gif" width = 250><br>

* Users can see recommended recipes.
* Users can post photos.
* Users can see all the posts.

**Optional Nice-to-have Stories**
* Users can create their own recipes.
* Users can like and comment on a post.
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
* Recipes Screen 1
   * Users can see recommended recipes.
   * Users can search for recipes. (optional)
* Creation Screen
   * Users can post photos.
* Recipes Screen 2 (Optional)
   * Users can create their own recipes.
* Profile Screen (Optional)
   * Users can see their profile page with their photos.
* Settings Screen (Optional)
   * Users can go to the setting page to choose their preferences.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Stream Screen
* Recipes Screen 1
* Profile Screen (Optional)

**Flow Navigation** (Screen to Screen)
* Login and Registration Screen
  * Recipe Screen 1
* Stream Screen
  * Creation Screen
* Recipes Screen 1
  * Recipe Screen 2 (optional)
* Creation Screen
  * Stream Screen
* Recipes Screen 2 (Optional)
  * Recipe Screen 1
* Profile Screen (Optional)
  * Setting Screen (Optional)
* Settings Screen (Optional)
  * Profile Screen (Optional)

## Wireframes

<img src="https://i.imgur.com/ZEjGAFA.jpg" width=600>





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


