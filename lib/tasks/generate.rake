namespace :generate do
  desc "TODO"
  task users: :environment do
  	5.times do 
  	 User.create!(
  	 	name: Faker::FamilyGuy.character, 
  	 	email: Faker::Internet.email, 
  	 	password: '123123123'
  	 	)
  	 	print "#{Faker::FamilyGuy.character} is created\n"	
  	end
  end

  desc "TODO"
  task topics: :environment do
  	5.times do
  		user_id = User.pluck(:id).sample
  		title = Faker::FamilyGuy.quote
  		Topic.create!(
  			title: title,
  			text: Faker::Lorem.paragraph,
  			user_id: user_id
  			)
  			print "Topic '#{title}' by #{User.find(user_id).name} [id: #{user_id}] is created!\n"
  	end
  end

  desc "TODO"
  task comments: :environment do
  	10.times do
  		topic_id = Topic.pluck(:id).sample
  		user_id = User.pluck(:id).sample
  		text = Faker::HitchhikersGuideToTheGalaxy.quote
  		Comment.create!(
  			text: text,
  			user_id: user_id,
  			topic_id: topic_id
  			)
  		print "Comment '#{text}' in '#{Topic.find(topic_id).title}' [id: #{topic_id}] by #{User.find(user_id).name} [id: #{user_id}] is created!\n"
  	end
  end

end