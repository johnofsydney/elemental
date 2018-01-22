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
e1 = Element.create :name => 'Helium', :symbol => 'He', :position => '1,18', :electrons => '2', :family => 'noble'
e2 = Element.create :name => 'Hydrogen', :symbol => 'H', :position => '1,1', :electrons => '1'
e3 = Element.create :name => 'Lithium', :symbol => 'Li', :position => '2,1', :electrons => '2,1', :family => 'alkali-metal'
e4 = Element.create :name => 'Neon', :symbol => 'Ne', :position => '2,18', :electrons => '2,8', :family => 'noble'
e5 = Element.create :name => 'Beryllium', :symbol => 'Be', :position => '2,2', :electrons => '', :family => 'alkali-earth'
e6 = Element.create :name => 'Boron', :symbol => 'B', :position => '2,13', :electrons => '', :family => 'non-metal'
e7 = Element.create :name => 'Carbon', :symbol => 'C', :position => '2,14', :electrons => '', :family => 'non-metal'
e8 = Element.create :name => 'Nitrogen', :symbol => 'N', :position => '2,15', :electrons => '', :family => 'non-metal'
e9 = Element.create :name => 'Oxygen', :symbol => 'O', :position => '2,16', :electrons => '', :family => 'non-metal'
e10 = Element.create :name => 'Flourine', :symbol => 'F', :position => '2,17', :electrons => '', :family => 'non-metal'
e11 = Element.create :name => 'Sodium', :symbol => 'Na', :position => '3,1', :electrons => '', :family => 'alkali-metal'
e12 = Element.create :name => 'Magnesium', :symbol => 'Mg', :position => '3,2', :electrons => '', :family => 'alkali-earth'
e13 = Element.create :name => 'Aluminium', :symbol => 'Al', :position => '3,13', :electrons => '', :family => 'poor-metal'
e14 = Element.create :name => 'Silicon', :symbol => 'Si', :position => '3,14', :electrons => '', :family => 'non-metal'
e15 = Element.create :name => 'Phosphorous', :symbol => 'P', :position => '3,15', :electrons => '', :family => 'non-metal'
e16 = Element.create :name => 'Sulfur', :symbol => 'S', :position => '3,16', :electrons => '', :family => 'non-metal'
e17 = Element.create :name => 'Chlorine', :symbol => 'Cl', :position => '3,17', :electrons => '', :family => 'non-metal'
e18 = Element.create :name => 'Argon', :symbol => 'Ar', :position => '3,18', :electrons => '', :family => 'noble'
e19 = Element.create :name => 'Potassium', :symbol => 'K', :position => '4,1', :electrons => '', :family => 'alkali-metal'
e20 = Element.create :name => 'Calcium', :symbol => 'Ca', :position => '4,2', :electrons => '', :family => 'alkali-earth'
e21 = Element.create :name => 'Scandium', :symbol => 'Sc', :position => '4,3', :electrons => '', :family => 'transition-metal'
e22 = Element.create :name => 'Titanium', :symbol => 'Ti', :position => '4,4', :electrons => '', :family => 'transition-metal'
e23 = Element.create :name => 'Vanadium', :symbol => 'V', :position => '4,5', :electrons => '', :family => 'transition-metal'
e24 = Element.create :name => 'Chromium', :symbol => 'Cr', :position => '4,6', :electrons => '', :family => 'transition-metal'
e25 = Element.create :name => 'Manganese', :symbol => 'Mn', :position => '4,7', :electrons => '', :family => 'transition-metal'
e26 = Element.create :name => 'Fe', :symbol => 'Iron', :position => '4,8', :electrons => '', :family => 'transition-metal'
e27 = Element.create :name => 'Cobalt', :symbol => 'Co', :position => '4,9', :electrons => '', :family => 'transition-metal'
e28 = Element.create :name => 'Nickel', :symbol => 'Ni', :position => '4,10', :electrons => '', :family => 'transition-metal'
e29 = Element.create :name => 'Copper', :symbol => 'Cu', :position => '4,11', :electrons => '', :family => 'transition-metal'
e30 = Element.create :name => 'Zinc', :symbol => 'Zn', :position => '4,12', :electrons => '', :family => 'poor-metal'
e31 = Element.create :name => 'Gallium', :symbol => 'Ga', :position => '4,13', :electrons => '', :family => 'poor-metal'
e32 = Element.create :name => 'Germanium', :symbol => 'Ge', :position => '4,14', :electrons => '', :family => 'poor-metal'
e33 = Element.create :name => 'Arsenic', :symbol => 'As', :position => '4,15', :electrons => '', :family => 'non-metal'
e34 = Element.create :name => 'Selenium', :symbol => 'Se', :position => '4,16', :electrons => '', :family => 'non-metal'
e35 = Element.create :name => 'Bromine', :symbol => 'Br', :position => '4,17', :electrons => '', :family => 'non-metal'
e36 = Element.create :name => 'Krypton', :symbol => 'Kr', :position => '4,18', :electrons => '', :family => 'noble'
e37 = Element.create :name => 'Rubidium', :symbol => 'Rb', :position => '5,1', :electrons => '', :family => 'alkali-metal'
e38 = Element.create :name => 'Strontium', :symbol => 'Sr', :position => '5,2', :electrons => '', :family => 'alkali-earth'
e39 = Element.create :name => 'Ytrium', :symbol => 'Y', :position => '5,3', :electrons => '', :family => 'transition-metal'
e40 = Element.create :name => 'Zirconium', :symbol => 'Zr', :position => '5,4', :electrons => '', :family => 'transition-metal'
e41 = Element.create :name => 'Niobium', :symbol => 'Nb', :position => '5,5', :electrons => '', :family => 'transition-metal'
e42 = Element.create :name => 'Molybdenum', :symbol => 'Mo', :position => '5,6', :electrons => '', :family => 'transition-metal'
e43 = Element.create :name => 'Technetium', :symbol => 'Tc', :position => '5,7', :electrons => '', :family => 'transition-metal'
e44 = Element.create :name => 'Ruthenium', :symbol => 'Ru', :position => '5,8', :electrons => '', :family => 'transition-metal'
e45 = Element.create :name => 'Rhodium', :symbol => 'Rh', :position => '5,9', :electrons => '', :family => 'transition-metal'
e46 = Element.create :name => 'Palladium', :symbol => 'Pd', :position => '5,10', :electrons => '', :family => 'transition-metal'
e47 = Element.create :name => 'Silver', :symbol => 'Ag', :position => '5,11', :electrons => '', :family => 'transition-metal'
e48 = Element.create :name => 'Cadmium', :symbol => 'Cd', :position => '5,12', :electrons => '', :family => 'poor-metal'
e49 = Element.create :name => 'Indium', :symbol => 'In', :position => '5,13', :electrons => '', :family => 'poor-metal'
e50 = Element.create :name => 'Tin', :symbol => 'Sn', :position => '5,14', :electrons => '', :family => 'poor-metal'
e51 = Element.create :name => 'Antimony', :symbol => 'Sb', :position => '5,15', :electrons => '', :family => 'poor-metal'
e52 = Element.create :name => 'Tellerium', :symbol => 'Te', :position => '5,16', :electrons => '', :family => 'non-metal'
e53 = Element.create :name => 'Iodine', :symbol => 'I', :position => '5,17', :electrons => '', :family => 'non-metal'
e54 = Element.create :name => 'Xenon', :symbol => 'Xe', :position => '5,18', :electrons => '', :family => 'noble'



c1 = Country.create :name => 'Afghanistan'
c2 = Country.create :name => 'Albania'
c3 = Country.create :name => 'Algeria'
c4 = Country.create :name => 'Andorra'
c5 = Country.create :name => 'Angola'
c6 = Country.create :name => 'Argentina'
c7 = Country.create :name => 'Armenia'
c8 = Country.create :name => 'Aruba'
c9 = Country.create :name => 'Australia'
c10 = Country.create :name => 'Austria'
c11 = Country.create :name => 'Azerbaijan'

c12 = Country.create :name => 'Bahamas'
c13 = Country.create :name => 'Bahrain'
c14 = Country.create :name => 'Bangladesh'
c15 = Country.create :name => 'Barbados'
c16 = Country.create :name => 'Belarus'
c17 = Country.create :name => 'Belgium'
c18 = Country.create :name => 'Belize'
c19 = Country.create :name => 'Benin'
c20 = Country.create :name => 'Bhutan'
c21 = Country.create :name => 'Bolivia'
c22 = Country.create :name => 'Bosnia'
c23 = Country.create :name => 'Botswana'
c24 = Country.create :name => 'Brazil'
c25 = Country.create :name => 'Brunei'
c26 = Country.create :name => 'Bulgaria'
c27 = Country.create :name => 'Burkina Faso'
c28 = Country.create :name => 'Burma'
c29 = Country.create :name => 'Burundi'

c30 = Country.create :name => 'Cambodia'
c31 = Country.create :name => 'Cameroon'
c32 = Country.create :name => 'Canada'
c33 = Country.create :name => 'Cabo Verde'
c34 = Country.create :name => 'Central African Republic'
c35 = Country.create :name => 'Chad'
c36 = Country.create :name => 'Chile'
c37 = Country.create :name => 'China'
c38 = Country.create :name => 'Colombia'
c39 = Country.create :name => 'Comoros'
c40 = Country.create :name => 'Congo'
c41 = Country.create :name => 'Costa Rica'
c42 = Country.create :name => 'Croatia'
c43 = Country.create :name => 'Cuba'
c44 = Country.create :name => 'Curacao'
c45 = Country.create :name => 'Cyprus'
c46 = Country.create :name => 'Czechia'

c47 = Country.create :name => 'Denmark'
c48 = Country.create :name => 'Djibouti'
c49 = Country.create :name => 'Dominica'
c50 = Country.create :name => 'Dominican Republic'

c51 = Country.create :name => 'East Timor'
c52 = Country.create :name => 'Ecuador'
c53 = Country.create :name => 'Egypt'
c54 = Country.create :name => 'El Salvador'
c55 = Country.create :name => 'Equatorial Guinea'
c56 = Country.create :name => 'Eritrea'
c57 = Country.create :name => 'Estonia'
c58 = Country.create :name => 'Ethiopia'

c59 = Country.create :name => 'Fiji'
c60 = Country.create :name => 'Finland'
c61 = Country.create :name => 'France'

c62 = Country.create :name => 'Gabon'
c63 = Country.create :name => 'Gambia'
c64 = Country.create :name => 'Georgia'
c65 = Country.create :name => 'Germany'
c66 = Country.create :name => 'Ghana'
c67 = Country.create :name => 'Greece'
c68 = Country.create :name => 'Grenada'
c69 = Country.create :name => 'Guatemala'
c70 = Country.create :name => 'Guinea'
c71 = Country.create :name => 'Guinea-Bissau'
c72 = Country.create :name => 'Guyana'


c73 = Country.create :name => 'Haiti'
c74 = Country.create :name => 'Honduras'
c75 = Country.create :name => 'Hong Kong'
c76 = Country.create :name => 'Hungary'

c77 = Country.create :name => 'Iceland'
c78 = Country.create :name => 'India'
c79 = Country.create :name => 'Indonesia'
c80 = Country.create :name => 'Iran'
c81 = Country.create :name => 'Iraq'
c82 = Country.create :name => 'Ireland'
c83 = Country.create :name => 'Israel'
c84 = Country.create :name => 'Italy'

c85 = Country.create :name => 'Jamaica'
c86 = Country.create :name => 'Japan'
c87 = Country.create :name => 'Jordan'

c88 = Country.create :name => 'Kazakhstan'
c89 = Country.create :name => 'Kenya'
c90 = Country.create :name => 'Kiribati'
c91 = Country.create :name => 'Kosovo'
c92 = Country.create :name => 'Kuwait'
c93 = Country.create :name => 'Kyrgyzstan'

c94 = Country.create :name => 'Laos'
c95 = Country.create :name => 'Latvia'
c96 = Country.create :name => 'Lebanon'
c97 = Country.create :name => 'Lesotho'
c98 = Country.create :name => 'Liberia'
c99 = Country.create :name => 'Libya'
c100 = Country.create :name => 'Liechtenstein'
c101 = Country.create :name => 'Lithuania'
c102 = Country.create :name => 'Luxembourg'

c103 = Country.create :name => 'Macau'
c104 = Country.create :name => 'Macedonia'
c105 = Country.create :name => 'Madagascar'
c106 = Country.create :name => 'Malawi'
c107 = Country.create :name => 'Malaysia'
c108 = Country.create :name => 'Maldives'
c109 = Country.create :name => 'Mali'
c110 = Country.create :name => 'Malta'
c111 = Country.create :name => 'Marshall Islands'
c112 = Country.create :name => 'Mauritania'
c113 = Country.create :name => 'Mauritius'
c114 = Country.create :name => 'Mexico'
c115 = Country.create :name => 'Micronesia'
c116 = Country.create :name => 'Moldova'
c117 = Country.create :name => 'Monaco'
c118 = Country.create :name => 'Mongolia'
c119 = Country.create :name => 'Montenegro'
c120 = Country.create :name => 'Morocco'
c121 = Country.create :name => 'Mozambique'

c122 = Country.create :name => 'Namibia'
c123 = Country.create :name => 'Nauru'
c124 = Country.create :name => 'Nepal'
c125 = Country.create :name => 'Netherlands'
c126 = Country.create :name => 'New Zealand'
c127 = Country.create :name => 'Nicaragua'
c128 = Country.create :name => 'Niger'
c129 = Country.create :name => 'Nigeria'
c130 = Country.create :name => 'North Korea'
c131 = Country.create :name => 'Norway'

c132 = Country.create :name => 'Oman'

c133 = Country.create :name => 'Pakistan'
c134 = Country.create :name => 'Palau'
c135 = Country.create :name => 'Palestinian Territories'
c136 = Country.create :name => 'Panama'
c137 = Country.create :name => 'Papua New Guinea'
c138 = Country.create :name => 'Paraguay'
c139 = Country.create :name => 'Peru'
c140 = Country.create :name => 'Philippines'
c141 = Country.create :name => 'Poland'
c142 = Country.create :name => 'Portugal'


c143 = Country.create :name => 'Qatar'

c144 = Country.create :name => 'Romania'
c145 = Country.create :name => 'Russia'
c146 = Country.create :name => 'Rwanda'

c147 = Country.create :name => 'Samoa'
c148 = Country.create :name => 'San Marino'

c150 = Country.create :name => 'Saudi Arabia'
c151 = Country.create :name => 'Senegal'
c152 = Country.create :name => 'Serbia'
c153 = Country.create :name => 'Seychelles'
c154 = Country.create :name => 'Sierra Leone'
c155 = Country.create :name => 'Singapore'
c156 = Country.create :name => 'Sint Maarten'
c157 = Country.create :name => 'Slovakia'
c158 = Country.create :name => 'Slovenia'
c159 = Country.create :name => 'Solomon Islands'
c160 = Country.create :name => 'Somalia'
c161 = Country.create :name => 'South Africa'
c162 = Country.create :name => 'South Korea'
c163 = Country.create :name => 'South Sudan'
c164 = Country.create :name => 'Spain'
c165 = Country.create :name => 'Sri Lanka'
c166 = Country.create :name => 'Sudan'
c167 = Country.create :name => 'Suriname'
c168 = Country.create :name => 'Swaziland'
c169 = Country.create :name => 'Sweden'
c170 = Country.create :name => 'Switzerland'
c171 = Country.create :name => 'Syria'

c172 = Country.create :name => 'Taiwan'
c173 = Country.create :name => 'Tajikistan'
c174 = Country.create :name => 'Tanzania'
c175 = Country.create :name => 'Thailand'
c176 = Country.create :name => 'Timor-Leste'
c177 = Country.create :name => 'Togo'
c178 = Country.create :name => 'Tonga'
c179 = Country.create :name => 'Trinidad and Tobago'
c180 = Country.create :name => 'Tunisia'
c181 = Country.create :name => 'Turkey'
c182 = Country.create :name => 'Turkmenistan'
c183 = Country.create :name => 'Tuvalu'

c184 = Country.create :name => 'Uganda'
c185 = Country.create :name => 'Ukraine'
c186 = Country.create :name => 'United Arab Emirates'
c187 = Country.create :name => 'United Kingdom'
c188 = Country.create :name => 'Uruguay'
c189 = Country.create :name => 'Uzbekistan'

c190 = Country.create :name => 'Vanuatu'
c191 = Country.create :name => 'Venezuela'
c192 = Country.create :name => 'Vietnam'

c193 = Country.create :name => 'Yemen'

c194 = Country.create :name => 'Zambia'
c195 = Country.create :name => 'Zimbabwe'






r1 = Resource.create!(quantity: 10, country_id: c1.id, element_id:e1.id )
r2 = Resource.create!(quantity: 20, country_id: c2.id, element_id:e2.id )


s1.elements << e2
s2.elements << e2
s3.elements << e4
