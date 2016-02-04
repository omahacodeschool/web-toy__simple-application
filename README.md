# Toy - Web

## Simple Application

This is an example application and guide to creating a simple, logic-only web application (compared to a database-driven web application).

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

That's all for now! Get to exploring, and enjoy working on your first Ruby web application!