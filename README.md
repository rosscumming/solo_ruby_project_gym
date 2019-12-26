# Gymland

**Overview:**

Gymland is a solo project that I created to finish up the ruby module which was taught as part of the 16 week Professional Software Development course by CodeClan. The app utilises Sinatra framework, was structured in MVC pattern and uses OOP principles. Gymland allows the user to create new gym members as well as update current member details. Gym classes can also be created and updated, as well as being deleted. Members can sign up for these classes. All of the entries made are saved to a database.

Setup:

To begin, please install Ruby and PostgreSQL using official documentation.

[Ruby](https://www.ruby-lang.org/en/documentation/installation/)
[PostgreSQL](http://www.postgresqltutorial.com/install-postgresql/)

Once installed, we need to install the Sinatra framework. Type the code below into your terminal to download and install the sinatra gem.

```
gem install sinatra

```

Now create the database typing the following into your terminal.

```
createdb gym
```

Once the database is created, we need to create the schema and seed it with some entries.

```
psql -d gym -f db/gym.sql
```

then

```
ruby db/seeds.rb
```

To run the app after the previous steps have been completed, type the following into terminal.

```
ruby app.rb
```

Visit [](http://localhost:4567) in your browser to use and view the app.

To close the local server connection that has been established, simply press CTRL + C in terminal.
