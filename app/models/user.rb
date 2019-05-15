class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts,dependent: :destroy
  has_one :person,dependent: :destroy
  accepts_nested_attributes_for :person
  
  validates :username, length: { in: 1..50 },
                       format: {with: /\A[a-zA-Z0-9]*\z/,
                       message: "has invalid character."},
                       presence: true,
                       uniqueness: true

  validates :password, presence: true

end
