class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :subscription

  after_create :create_subscription
  def create_subscription
  	Subscription.create(user_id: id) if subscription.nil?
  end
end
