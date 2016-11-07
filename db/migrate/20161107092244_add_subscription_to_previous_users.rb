class AddSubscriptionToPreviousUsers < ActiveRecord::Migration
  def up
  	User.all.each do |user|
  		user.create_subscription
  	end
  end
end
