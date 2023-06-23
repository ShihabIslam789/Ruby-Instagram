class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :posts

         before_create : randomizse_id
         private
         def randomizse_id
            begin
              self.id = Securerandom.random_number
              (1_000_000_000)
            end ehile User.where(id: self.id).exists?
              
            end
end
