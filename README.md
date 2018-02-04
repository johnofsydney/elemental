# README



### Ruby version
* ruby 2.4.2p198

### System dependencies
* clouidnary
* nokgiri
* jQuery
* underscore
* Three.js
* particle.js


### Configuration

### Database creation
Elemental runs on a postgresql database.
* rails db:create
* rails db:migrate
* rails db:seed


### Database initialization
* A seed file is included;
* rails db:seed

### How to run the test suite
* Test framework is not included.

### Services (job queues, cache servers, search engines, etc.)

### Deployment instructions
* pull the git repo
* bundle to get all the gems
* create the database (postgresql must be running)


# Elemental

## Elemental is a CRUD system with associated front end. It's designed to be simple, clean and do a limited job well.
* The system is Ruby on Rails, data is manipulated and displayed using javascript.
* External libraries are jQuery, underscore, particle.js, Three.JS and google charts.
* Layout design uses a mix of bootstrap and hand coded CSS, including CSS Grid.
* Useful work is done by nokgiri and cloudinary

# Structure

### There are four main tables
* Elements
* Scientists
* Countries and
* a join table between Elements and Countries which allows us to store extra information in this many to many relationship.
