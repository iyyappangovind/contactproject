class User < ActiveRecord::Base

EMAIL_REGEX = /\A\S+@.+\.\S+\z/
validates :username, :presence => true
validates :email, :presence => true, :format => EMAIL_REGEX
validates :password, :presence => true #password_confirmation attr
end
