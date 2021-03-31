class User < ApplicationRecord

   
    validates :username, uniqueness: false
    
end

