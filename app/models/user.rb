class User < ActiveRecord::Base
<<<<<<< HEAD
 has_many :microposts, dependent: :destroy
 has_many :relationships, foreign_key: "follower_id", dependent: :destroy
 has_many :followed_users, through: :relationships, source: :followed

 has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower


  validates :name,  presence: true, length: { maximum: 50 }
=======
 
 
  validates :name,  presence: true, length: { maximum: 50 }

>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

 def feed
    Micropost.from_users_followed_by(self)
 end

    def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
    end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

=======
>>>>>>> 31fa9486edea99cf6168b5f19223dee959249132
end
