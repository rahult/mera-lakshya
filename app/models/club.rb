class Club < ActiveRecord::Base
  has_many :users
  has_many :scores, through: :users
  validates :name, presence: true

  def to_s
    name
  end
end
