# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Post.create(title:'First', body:'post')
# Post.create(title:'Second', body:'post')
# Post.create(title:'Third', body:'post')
# Post.create(title:'Fourth', body:'post')
# Post.create(title:'Fifth', body:'post')

Question.create({ question: 'Who was the first US President?', subject: 'US History' })
Question.create({ question: 'Who was the second US President?', subject: 'US History' })
Question.create({ question: 'Who was the third US President?',  subject: 'US History' })
Question.create({ question: 'Who was the fourt US President?', subject: 'US History' })
Question.create({ question: 'Who was the fifth US President?', subject: 'US History' })
Question.create({ question: 'Who was the sixth US President?', subject: 'US History' })
Question.create({ question: 'Who was the seventh US President?', subject: 'US History' })
Question.create({ question: 'Who was the eighth US President?', subject: 'US History' })
Question.create({ question: 'Who was the ninth US President?', subject: 'US History' })
Question.create({ question: 'Who was the tenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the eleventh US President?', subject: 'US History' })
Question.create({ question: 'Who was the twelfth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the fourteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the fifteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the sixteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the seventeenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the eighteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the nineteenth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twentieth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-first US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-second US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-third US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-fourth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-fifth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-sixth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-seventh US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-eigth US President?', subject: 'US History' })
Question.create({ question: 'Who was the twenty-ninth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirtieth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-first US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-second US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-third US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-fourth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-fifth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-sixth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-seventh US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-eighth US President?', subject: 'US History' })
Question.create({ question: 'Who was the thirty-ninth US President?', subject: 'US History' })
Question.create({ question: 'Who was the fortieth US President?', subject: 'US History' })
Question.create({ question: 'Who was the forty-first US President?', subject: 'US History' })
Question.create({ question: 'Who was the forty-second US President?', subject: 'US History' })
Question.create({ question: 'Who was the forty-third US President?', subject: 'US History' })
Question.create({ question: 'Who was the forty-fourth US President?', subject: 'US History' })

User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
 name = Faker::Name.name
 email = "example-#{n+1}@railstutorial.org"
 password = "password"
 User.create!(name: name,
              email: email,
              password: password,
              password_confirmation: password)
end
