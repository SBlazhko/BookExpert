

# 10.times {
# 	News.create(
# 		title: Faker::ChuckNorris.fact,
# 		image: Faker::Avatar.image,
# 		description: Faker::Hipster.paragraphs,
# 		user_id: 1 
# 	)
# }

# 15.times{
# 	User.create(
# 		name: Faker::StarWars.character,
# 		role: 1,
# 		password: 111111,
# 		avatar: Faker::Avatar.image,
# 		email: Faker::Internet.email('Chuck')
# 	)
# }

User.create(
	name: "Test Test",
	role: 1,
	password: 111111,
	avatar: Faker::Avatar.image,
	email: Faker::Internet.email('Chuck')
)

# User.all.each do |u|
# 	Biography.create(
# 		work_experiance: Faker::Hipster.sentences(4),
# 		bibliography: Faker::Hipster.sentences(4),
# 		slogan: Faker::ChuckNorris.fact,
# 		user_id: u.id
# 	)
# 	2.times{
# 		WorkGenre.create(
# 			title: Faker::GameOfThrones.character,
# 			description:Faker::Hipster.sentences(2),
# 			price_per_symbol: Faker::Number.between(1, 10),
# 			user_id: u.id,
# 		)
# 	}
# end