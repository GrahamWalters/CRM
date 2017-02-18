class Customer < ApplicationRecord
  has_many :addresses

  validates :first_name, presence: true, length: { minimum: 1, maximum: 35 }
  validates :middle_name, length: { maximum: 35 }
  validates :last_name, length: { minimum: 1, maximum: 35 }

  validates :email, :email_format => { allow_nil: true, allow_blank: true }

end
