
	class TweetsController < ApplicationController
		
		def index
			require 'twitter'

			client = Twitter::REST::Client.new do |config|
				  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
				  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
				  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
				  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
				end

			options = {:count => 10}

			@tweets = client.user_timeline(params[:search], options)
		     
			
		end

		
		def save_tweets_to_database

		require 'twitter'

			client = Twitter::REST::Client.new do |config|
				  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
				  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
				  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
				  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
				end

			options = {:count => 10}
			@tweets = client.user_timeline(params[:search], options)

			    @tweets.each do |t|
			       Tweet.create do |u|
				    u.username =  t.screen_name
				    u.content = t.text
			  		end
				end
		end
			  

		 
	end

