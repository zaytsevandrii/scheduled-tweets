#email:string
#password_digest:string
#
#password:string virtual
#password_confirmation:string virtual
class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, nessage:'must be a valid address' }
end
