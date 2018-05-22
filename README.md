[![Build Status](https://travis-ci.org/blarvin/TEAM-MALN-ACEBOOK.svg?branch=master)](https://travis-ci.org/blarvin/TEAM-MALN-ACEBOOK)

[![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate/test_coverage)

ACEBOOK challenge
=================

[Check project online](https://maln-acebook.herokuapp.com/users/sign_in)

Repository:
-------

* https://github.com/blarvin/TEAM-MALN-ACEBOOK

Card Wall:
-------

* https://trello.com/b/Lvz1moG1/acebook-dapper-penguins

Task:
-------
The purpose of the progect is to write a clone of Facebok.

User Story:
-------

```
As a user I can go to the main page and sign-up/sign-in
```

```
As a user I can see posts of other users in date order: newest posts first
```

```
As a user I can see the date of the post and name of a user who created the post

```

```
As a user I can go to my profile and see my name and my posts
```

```
As a user I can comment on posts and see other people comments
```

```
As a user I can like posts and see the number of likes
```
Technologies used:
-----
* Ruby 2.5.0
* Rails 5.1.5
* RSPEC
* CSS
* Rails generator: Devise
* Docker
* Heroku
* Travis-ci
* Rubocop
* PRY
* Simplecov
* Acts As Votable


Contributors:
-------
* Lorraine Phillips [check github here](https://github.com/ljcphillips)
* Andrew Kemp [check github here](https://github.com/andyk144)
* North Bremicker [check github here](https://github.com/blarvin)
* Mary Domashneva [check github here](https://github.com/MaryDomashneva)

## Our team
<img src="https://monosnap.com/image/vqGyj7S3jrxCGe2Yp2Fqf8lboTU6k8.png">

Run project:
-----

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

Result:
-------

Our app has following controllers:
* ```application_controller```;
* ```home_controller```;
* ```registration_controller```;
* ```user_controller```;
* ```posts_controller```;
* ```messages_controller```;
* ```comments_controller```;

For now, our controllers contain all responsible code. Following convention, we would like to have kept our controllers as skinny as possible, moving all of our code to our models. Unfortunately, we did not have enough time for that. We are planning to come back to it at a later date.

### For these two weeks we were able to implement following features:
* Authentication. In order to use our app users have to sign_up and then sign_in.
* Posts. Users can make posts and see all other users post on a main page. Also, users can see the author of the post and date.
* Comments. Users can leave comments on each others posts.
* Likes. Users can ```like``` posts and see number of likes (from other users). Users cannot ```like``` one post more than once. Users can also rescind a ```like``` they have made.
* Profiles. Users can go to their user profile and see his/her posts. Also users can see other users profiles.


Reflections:
-------

We had two weeks for the project. It was the first time any of us had used Rails to build a project.

### Inside our team we agreed to have some grounds rules for the two weeks:
1. Stand-up's at 10:00 am every day:
* Discuss the scope of work for the day,
* Reallocate tickets if necessary and
* Merge pull requests.
2. Retro at 17:00 everyday:
* Discuss worked completed and
* Reflect on what went well and what didn't go so well.
3. Switching PM everyday.
4. Work in pairs.

## Week one:

We spent all week focusing on our environment setup. By environment we mean:
* Set-up Travis
* Set-up Heroku
* Set-up Docker and deploy the Heroku using Docker.

Initially, we anticipated that this process would not take too long to complete however, we ended up spending the whole week trying to understand how Rails works and build the environment on top.

You can read about our difficulties and how we overcame them [here](https://github.com/MaryDomashneva/Travis-Heroku-Docker/)

## Week two:

Week two was split between two ‘two-day sprints’. That means that on Monday we had 30 minutes to define the scope of work for our first 'two-day sprint'.

### We used Trello as task manager and we used the following techniques to work with our tickets:

* Label tickets in title with the complexity level from 1 to 5, based on our expectations.
* Label tickets with different colours to define different areas of work, e.g yellow - set up environment, purple - tests, green - implementation features.
* Allocate team members to the tickets, based on team members expectations, everyone was able to choose the ticket that he/she wanted to work with.
* Moved tickets through the process: to-do (all tickets for two days) → in progress(currently working on) → blocked(something that we were stuck with )→ in review (tickets at pull request stage) → done (merge to master stage).

### As a result of the two weeks we can state the following:

#### Learnings:
* Rails helper methods
* Not to get stuck with anything for too long. Ask for help: coaches/colleagues
* How to organise the process of creating a project
* How Docker works
* Take breaks


#### Difficulties:
* Lack of organisation during week #1
* Feeling that we do not have enough knowledge
* Environment set up took a long time to sort

#### Positives: 
* Good division of labour
* Feeling that you can rely on your team
* Feeling that we've learnt a lot
