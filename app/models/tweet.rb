class Tweet < ActiveRecord::Base

	#A method to grab latest tweets from a Twitter user
	def self.get_tweets
		    
		    #create a Twitter Search object
		    search = Twitter::Search.new
		    
		    #grab recent 10 tweets which contain 'new year resolution' words, and loop each of them
		    search.containing("new year resolution").result_type("recent").per_page(10).fetch.each do |tweet_results|
		   
		      
		    
        #creating the tweet record
        Tweet.create!({
            :username => tweet_results.username,
            :content => tweet_results.content,
            :created => twitter_created_at
        })
      end
    end
  end
end
