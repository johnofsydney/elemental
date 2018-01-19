# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# These are extensions that must be enabled in order to support this database


Scientist.destroy_all
Element.destroy_all
Deposit.destroy_all
ElementsScientist.destroy_all



Scientist.destroy_all
s1 = Scientist.create :name => 'Per Teodor Cleve'
s2 = Scientist.create :name => 'Abraham Langlet'
s3 = Scientist.create :name => 'William Ramsay'

Element.destroy_all
e2 = Element.create :name => 'Helium'
e1 = Element.create :name => 'Hydrogen'
e3 = Element.create :name => 'Lithium'
e4 = Element.create :name => 'Neon'

Deposit.destroy_all
d1 = e3.deposits.create :name => 'Uyuni'

s1.elements << e2
s2.elements << e2
s3.elements << e4
