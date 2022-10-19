# phase-3-mock-code-challenge-book-tracker

## Learning Goals

- Write Active Record Migrations
- Connect between tables using Active Record Associations
- Write class and instance methods using Active Record
- Use Active Record to query the database

## Introduction

For this assignment, we'll be working with a book domain.

We have three models: `Book`, `Reader`, and `Publisher`

For our purposes, a `Publisher` has many `Book`s, a `Reader` has many `Book`s,
and a `Book` belongs to a `Reader` and "belongs to" a `Publisher`.

`Publisher` - `Reader` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you
start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec`
and you cannot run `learn test`. You'll need to create your own sample instances
so that you can try out your code on your own. Make sure your associations and
methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here. You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.

Writing error-free code is more important than completing all of the
deliverables listed - prioritize writing methods that work over writing more
methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First,
prioritize getting things working. Then, if there is time at the end, refactor
your code to adhere to best practices.

## What You Already Have

Migration files for the initial `Publisher`, and `Reader`
models, and seed data for some `Publisher`s, `Reader`s, and `Book`s. **You will have to edit the migration files to create tables with these structures:**
### publisher Table

| Column        | Type    |
| ------------- | ------- |
| name          | String  |
| founding_year | Integer |
| money         | Integer |

### readers Table

| Column        | Type    |
| ------------- | ------- |
| name          | String  |
| superpowers   | String  |
| money         | Integer |

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record give your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `books` table.

- A `Book` belongs to a `Reader`, and a `Book` belongs to a `Publisher`.
  In your migration, create any columns your `books` table will need to
  establish these relationships using the right foreign keys.
- The `book` table should also have:
  - An `title` column that stores a string.
  - A `author` column that stores a string.
  - A `price` column that stores an integer

After creating the `books` table using a migration, add foreign keys to `seeds.rb` in the proper table.

**Once you've set up your `books` table**, work on building out the following
deliverables.

### Object Association Methods
#### Book

- `Book#reader`
  - returns the `reader` instance for this book
- `Book#publisher`
  - returns the `publisher` instance for this book

#### Publisher

- `Publisher#books`
  - returns a collection of all the books published by the publisher
- `Publisher#readers`
  - returns a collection of all the reader who bought a book published by the publisher

#### Reader

- `Reader#books`
  - returns a collection of all the books that the reader owns
- `Reader#publishers`
  - returns a collection of all the publishers of the reader's books

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `Reader.first.publishers` and see a list of the
publishers for the first reader in the database based on your seed data; and
`Book.first.reader` should return the reader of the first book in the database.

### Aggregate and Association Methods

#### Book

- `Book#why_read?`
  - should return a string formatted as follows:
    `Even a superhero with the ability of {insert reader's superpower} made time to read {insert book's title} published by {insert publisher's name}!`

#### Publisher

- `Publisher#publish_new_book(title, author, price)`
  - takes a `title`, `author`, and `price`, and creates a new `Book` instance associated with this
    publisher
  - after creating this method, use it to publish at least two new books. Note that these books will not yet have readers.
- `Publisher.two_newest_publishers`
  - returns the two `Publisher` instances with the most recent founding year
- `Publisher.ban_book(title)`
  - takes the `title` (string) of a book and snatches it from all the readers who own it! Change the foreign key from the owners' to nil. 

#### Reader

- `Reader#bought?(title, author, publisher)`
  - accepts a `title` (string), `author` (string), and `publisher` (instance). If the reader already owns the book, returns the string `{insert reader's name} already owns {insert title}`. If the reader does not own the book, **and** the book is not owned by anyone else, then make the owner of the book this reader. If the reader does not own the book, **and** the book is owned by someone else, create a new book in the database with the appropriate title, author, and publisher. Whenever a book it bought, the price of the book should be subtracted from the Reader's `money` and added to the `money` of the publisher of that book. 
- `Reader#lend(reader, book)`
  - accepts a `Reader` instance and a `Book` instance, changes the book's reader
    to be the given reader; your code should only make the change if the book
    belongs to the reader who's lending it


## Advanced Goals

Create a migration that creates a new table of villains. The table should have this layout:
### villain Table

| Column        | Type    |
| ------------- | ------- |
| name          | String  |
| superpower    | String  |

Write some seed data and seed this table with a few villains. 

Create a new migraion and add a new column to the publishers table for a foreign key associated with the villains. 

**Make sure to create the new .rb file in app/models, and title it correctly.**

### Aggregate and Association Methods

#### Villain

- `Villain#publisher`
  - returns the publisher that sponsors this villain
- `Villain#books`
  - returns a collection of all the books published by the publisher that sponsors this villain :)

- `Villain#hidden_weapon`
  - A little back story: big publishing companies have started to sponsor supervillains for some extra cash! These companies have agreed to help the supervillains by hiding secret weapons in their books! When this method is called, the secret weapons in the books published by the sponsor of this particular villain will be triggered and the readers of said books with be killed instantly (remove the readers' data from the database).
