# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ThingType.delete_all
_dog = ThingType.create(name: 'Dog')
_cat = ThingType.create(name: 'Cat')

# Developing Stuff
user = User.create(email: 'dev@dev.com', password: 'password', password_confirmation: 'password');
cat = Thing.create(name: 'Einstein', uuid: '1235-abcd' )
dog = Thing.create(name: 'Maui', uuid: '1234-abcd' )
cat.thing_type = _cat
user.things << cat
dog.thing_type = _dog
user.things << dog
