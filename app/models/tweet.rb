class Tweet < ActiveRecord::Base

	#A method to grab latest tweets from a Twitter user
	# def self.get_tweets
		    
	# 	    #create a Twitter Search object
	# 	    search = Twitter::Search.new
		    
	# 	    #grab recent 10 tweets which contain 'new year resolution' words, and loop each of them
	# 	    search.containing("new year resolution").result_type("recent").per_page(10).fetch.each do |tweet_results|
		   
		      
 #        #creating the tweet record
 #        Tweet.create!({
 #            :username => tweet_results.username,
 #            :content => tweet_results.content,
 #            :created => twitter_created_at
 #        })
 #      end
 #    end
 #  end

 # attr_accessible :content, :username


		# def self.get_tweets
		# 	Twitter.user_timeline(params[:search]).each do |tweet|
		
		# 	    create({
			            
		# 	            content: tweet.text,
		# 	            username: tweet.screen_name}
		# 	    )
		# 	end
		# end

		# def self.save_tweets_into_database
		#     tweets = client.user_timeline(params[:search], options)
		#     tweets.each do |tweet|
		        
		#         Newtweets.create({content: tweet.text, username: tweet.user.screen_name})
		#         end
		#    end
		# end

		
end
