

10.times {
	News.create(
		title: Faker::ChuckNorris.fact,
		image: Faker::Avatar.image,
		description: Faker::Hipster.paragraphs,
		user_id: 1 
	)
}

# User.create(
# 	name: Faker::StarWars.character,
# 	role: 0,
# 	password: 111111,
# 	avatar: Faker::Avatar.image,
# 	email: "blaghco@ukr.net"
# )