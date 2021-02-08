# BotsNext

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

General requirements:

- Ruby 2.6.5
- Rails 6.0.2
- PG
- RSpec

## Running the app

### Check out the repo

```
$ git clone git@github.com:JayaramVenugoapl/botnext.git
```

```
$ cd botnext
```

### Setup

1. Install pg
2. Install bundler: `gem install bundler`
3. Install gems: `bundle install`
4. Setup DB: `rails db:create`

### Usage

1. Start rails && react server locally

```

$ rails start

```

## Running Tests

1. Make sure "rspec" is installed by running:

   ```sh
       $ bundle show rspec
   ```

   If a path is listed, then rspec is installed.

2. Run rspec for the spec folder through bundle:
   ```sh
       $ bundle exec rspec spec
   ```

# API

## Registration & Login

| resource      | description |
| :------------ | :---------- |
| `/api/posts ` | List Posts  |
