# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:              "Example User",
             email:             "example@railstutorial.org",
             password:          "$2a$10$YkY0o50I1O6FvcbF5lGMjeSwTrGuJsXPbx2yicPC0G9f9n/Fw4ozq",
             password_digest:   "$2a$10$YkY0o50I1O6FvcbF5lGMjeSwTrGuJsXPbx2yicPC0G9f9n/Fw4ozq",
             admin:             true
             )

99.times do |n|
    name        = Faker::Name.name
    email       = "example-#{n+1}@railstutorial.org"
    password    = "password"

    User.create!(name:              name,
                 email:             email,
                 password:          password,
                 password_digest:   password
                 )
end