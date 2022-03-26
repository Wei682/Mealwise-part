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

* Users can see recommended recipes.
* Users can register new accounts.
* Users can login.
* Users can post photos.
* Users can see all the posts.

**Optional Nice-to-have Stories**
* Users can create their own recipes.
* Users can like and comment on a post.
* Users can search for recipes.
* Users can see their profile page with their photos.
* Users can go to the setting page to choose their preferences.

### 2. Screen Archetypes

* Login Screen
   * Users can login.
* Registration Screen
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
* Login Screen
  * Registration Screen
  * Recipe Screen 1
* Registration Screen
  * Login Screen
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
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
