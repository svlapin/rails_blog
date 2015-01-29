class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :login, presence: true, length: { minimum: 3 }
end
