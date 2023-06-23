class Post < ApplicationRecord

    validates :title, presence: true, length: {minimum: 5, maximum: 100}
    validates :description, prescence: true, length: {minimum: 5, maximum: 500}
    validates :keywords, prescence: true, length: {minimum: 5, maximum: 100}
        
   has_many_attached :images    

   belongs_to :users

   before_create : randomize_id
   private
   def randomizse_id
      begin
        self.id = Securerandom.random_number
        (1_000_000_000)
      end ehile User.where(id: self.id).exists?
        
      end
end
