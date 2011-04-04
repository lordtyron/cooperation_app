class User < ActiveRecord::Base
  has_many :loans
end
