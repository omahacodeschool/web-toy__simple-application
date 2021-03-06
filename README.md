# Toy - Web

## Simple Application

This is an example application and guide to creating a simple, logic-only web application (compared to a database-driven web application).

Additional details for what this assignment looks like when it's completed are below the **What's Inside** section.

### Getting Started

#### Installation

First, fork this repository, if you haven't already.

Then clone your fork on to your local development machine:

```zsh
cd ~/Code
git clone url_for_your_copy_of_this_assignment
```

(Note: You'll need to replace `url_for_your_copy_of_this_assignment` with the actual SSH URL for your repository, which looks something like `git@github.com:sumeetjain/web-toy__some-assignment.git`.)

That will create a folder named for the assignment in **~/Code**, and it will download the files from the repository into that folder.

Next, `cd` into that newly created folder, and run the setup script:

```zsh
cd the-newly-created-folder
bin/setup
```

(Note: You'll need to replace `the-newly-created-folder` with the actual name of the folder for your assignment.)

You won't need to run the setup script for this assignment again.

If the setup script does not return any failures or errors, you're ready to work on the assignment. Open the project folder in your code editor, and begin.

### First Steps

Run the program, to see what it can do for starters. Execute the following command in Terminal:

`rackup`

This should start up a _web server_ using a tool called "Rack".

Now visit <http://localhost:9292>, where you should see a simple webpage.

And if you ever need to shut down the web server, press `CONTROL + C` while in the Terminal. In fact, try that now. It should shut down the web server. After it's shut down, go back to the web browser and try to reload the homepage
system. It should fail, because the web server is not running.

### Explore

The goal is for you to explore this application and get the tests passing.

When you run the tests, probably only one of them passes currently. Explore the tests, starting with the **easy_test.rb** file to see how they work.

To run the tests, run `rake` -- or if that fails because of a version conflict, use `bundle exec rake`.

### What's Inside

#### Critical Files

There are several files that are part of the underlying framework, which you
should not edit at all. Those files are:

- main.rb
- config.ru
- Rakefile
- Gemfile
- Gemfile.lock
- .gitignore

#### Your Files

But most files are okay to edit, rename, or even remove; and you might even add files of your own.

You will be working primarily in the **controllers** and **views** folders for this assignment.

There is another README in the **controllers** directory that goes over how they work: https://github.com/omahacodeschool/web-toy__simple-application/tree/master/controllers

That's all for now! Get to exploring, and enjoy working on your first Ruby web application!

### Assignment Details

The goal of this assignment is to practice the following:

- Adding new controller actions
- Adding new view files
- Using `params` to retrieve a request path's _placeholder_ value.
- Creating a link using HTML (`<a href=...`)

When it's complete, the provided tests should pass. **You should not edit the tests.**

When you run `bundle exec rake` (or just `rake`, if that works), the testing tool we're using _simulates a running web server_. So you do not need to first run the web server in order to run the tests. When each test runs, it accesses its own, behind-the-scenes web server.

The test in the **easy_test.rb** file already passes. It tests that if you go to <http://localhost:9292/>, then you should see "Hello, World!" somewhere on the page.

The other tests do not yet pass. A brief explanation of them:

Test            | Explanation
--------------- | -------------------------------------------------------------
test_about      | If you go to <http://localhost:9292/about>, then "My name is" should be somewhere on the page.
test_favorite_things | If you go to <http://localhost:9292/favorites>, then "There are a few of my favorite things" should be somewhere on the page.

Note that these tests are not asserting that those Strings are the _only_ content on those pages. They're simply checking that those Strings are part of the page's content. So you can have some fun with this. Feel free to add a little bit about yourself on the About page, and some of your actual favorite things on the Favorites page. (Or don't--it's not critical, if you just want to get through this.)

Test            | Explanation
--------------- | -------------------------------------------------------------
test_links_on_homepage      | If you go to <http://localhost:9292/>, then there should be a couple [links](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Hyperlink) pointing to the About and Favorites pages.
test_links_on_favorites | If you go to <http://localhost:9292/favorites>, then there should be a link back to the homepage.
test_links_on_about | If you go to <http://localhost:9292/about>, then there should be a link back to the homepage.
test_greeter_simply | If you go to <http://localhost:9292/greet/Sumeet>, then the word "Sumeet" should be somewhere on the page.
test_greeter_randomly | If you go to <http://localhost:9292/greet/ANYTHING_AT_ALL>, then that String should be somewhere on the page. You'll need to use a _placeholder_ in the controller action for this to work. The test will generate a random string and try that. E.g. <http://localhost:9292/greet/fj389349sduyfd2>, <http://localhost:9292/greet/v32564g3243>, or <http://localhost:9292/greet/m2308487sa33>. Don't modify this test--it's written correctly.

You will probably add new files to the **views/** folder to complete this assignment. You will probably add new controller actions as well.