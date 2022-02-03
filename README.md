
## Tech Stack

**Rails:** 6

**Ruby:** 3

![Noizer Logo](https://i.imgur.com/EGvfrnq.png)

**Live preview:** [https://noizer.herokuapp.com](https://noizer.herokuapp.com)

##### **Instabook** is a social media platform built using Ruby on the Rails framework.

It has a bunch of features including
- User profiles
- Like system
- Comment system
- Relationship system (Follow, Unfollow)

The user can also *edit* and *delete* their posts. They also have an ability to set their **profile image** and **cover image**. There is also a function to deactive an account.

Administrators have access to an **Admin Panel**, which has been added using the [rails_admin](https://rubygems.org/gems/rails_admin) gem. And authenticated with [cancan](https://github.com/ryanb/cancan)

The relationship, post and comment system have been custom coded and are not part of any gems.

## Screenshots

![Login Page](https://i.imgur.com/8P1kAzW.png)

This is the **Login Page**. This is required for most of the site functionality mut you can always rock out to music not signed in. The login system is part of the [Devise](https://rubygems.org/gems/devise) gem. I also used [Omniauth](https://github.com/omniauth/omniauth) to create a facebook and google login option.

![Register Page](https://i.imgur.com/P1BW0or.png)

By clicking the gray *Sign Up* button on the login page, you'll be greeted with this. This is the **Sign Up Page**. Users upload their profile picture and cover image but it is not required and input some basic information.

![Main Page](https://i.imgur.com/FpbNTK0.png)

When you login, you'll see this. This is the **Home page**. It basically desplays to you all the songs in time order, and then you can like them, follow them and comment on them in the detail page. A neat feature is also that if you are listening to the song it shows when in the song you commented on it.

![New Song Page](https://i.imgur.com/WG5d2jd.png)

When you click the **New song** link on the home page, you'll end up here. This page is custom coded and offers you to either post with audio or without one.

![My Profile Page](https://i.imgur.com/p1PsEJL.png)

This is the **My Profile** page. It displays everything you'd expect it to.
It shows the number of followers you've got, as well as how many people you follow. It also shows your songs.

For image upload I am using [fog-aws](https://github.com/fog/fog-aws) to use S3 for my storage and [carrierwave](https://github.com/carrierwaveuploader/carrierwave) to upload them.

![Search page](https://i.imgur.com/68Kv8FE.png)

With the navbar searchbar you can search for songs and users, and it displays them.

## Tech Stack

**Rails:** 6

**Ruby:** 3
