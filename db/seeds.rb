# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# These are extensions that must be enabled in order to support this database



# CountriesElement.destroy_all
ElementsScientist.delete_all
Scientist.destroy_all
Element.destroy_all
# Deposit.destroy_all
Country.destroy_all
Resource.destroy_all


# Scientist.destroy_all
s1 = Scientist.create :name => 'Per Teodor Cleve'
s2 = Scientist.create :name => 'Abraham Langlet'
s3 = Scientist.create :name => 'William Ramsay'

# Element.destroy_all
e1 = Element.create :name => 'Helium', :electrons => '2'
e2 = Element.create :name => 'Hydrogen', :electrons => '1'
e3 = Element.create :name => 'Lithium', :electrons => '2,1'
e4 = Element.create :name => 'Neon', :electrons => '2,8'

# Deposit.destroy_all
# d1 = e3.deposits.create :name => 'Uyuni'

c1 = Country.create :name => 'Australia'
c2 = Country.create :name => 'New Zealand'
c3 = Country.create :name => 'China'
c4 = Country.create :name => 'Nauru'

r1 = Resource.create!(quantity: 10, country_id: c1.id, element_id:e1.id )
r2 = Resource.create!(quantity: 20, country_id: c2.id, element_id:e2.id )


s1.elements << e2
s2.elements << e2
s3.elements << e4
