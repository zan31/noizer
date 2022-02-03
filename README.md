
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

When you login, you'll see this. This is the **Home page**. As you can see, there's quite a lot going on here. First, you see your *timeline*. All posts will be shown here. On the right side, you can see the *Gallery* tab. It displays all the images that have been posted to the website.
On the far right side are *Suggestions*. You can follow users or visit their accounts by clicking on their name.
The purple rectangle displays the last user that has joined the website. I didn't have a better idea so I made that.
On the left side is your profile and a login button.
You can also *make new posts*, *comment* and *like* posts here.

![New Post Page](https://i.imgur.com/WG5d2jd.png)

When you click the **New Post** button on the home page, you'll end up here. This page is custom coded and offers you to either post with audio or without one.
![My Profile Page](https://i.imgur.com/QBSKEIB.png)

This is the **My Profile** page. It displays everything you'd expect it to.
It shows the number of followers you've got, as well as how many people you follow. It also shows your posts and your *Gallery* which can be expanded. You can edit your profile here by clicking on the *Edit Profile* button.

![Expanded Gallery](https://i.imgur.com/g66W24u.png)

You'll see this if you click on an image in *Gallery*. The post currently doesn't have any comments sooooooo they obviously won't show up. But if it had them they would.... I think and hope.

That's all there is too it really. I probably forgot some minor functions but you'll probably come across them while using/developing the app.



## Setup

Clone the project

```bash
  git clone https://github.com/nejcpirecnik/instabook.git
```

Navigate into it

```bash
  cd "where_you_exported_it"
```

Install all the gems

```bash
  bundle install
```

Migrate the database

```bash
  rails db:migrate
```

Start the server

```bash
  rails s
```
## Tech Stack

**Rails:** 6

**Ruby:** 3
