class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
            # one or more non-whitespace characters on the left and right side of an @ sign
            format: { with: /\S+@\S+/ },
            # emails are unique regardless of upper or lower case characters
            uniqueness: { case_sensitive: false }
end