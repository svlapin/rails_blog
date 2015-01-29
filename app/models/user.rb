class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :login, presence: true, length: { minimum: 3 }

  def authenticate(password)
    return password && password == self.password ? true : false
  end
end
