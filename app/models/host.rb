class Host < ApplicationRecord    
    has_secure_password
    validates :email, :name, uniqueness: { case_sensitive: false }
    validates  :email, :name, presence: true
end
