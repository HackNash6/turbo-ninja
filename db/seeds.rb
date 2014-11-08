# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ThingType.delete_all
ThingType.create(name: 'Dog')
_cat = ThingType.create(name: 'Cat')

# Developing Stuff
user = User.create(email: 'dev@dev.com', password: 'password', password_confirmation: 'password');
cat = Thing.create(name: 'Maui')
cat.thing_type = _cat
user.things << cat
