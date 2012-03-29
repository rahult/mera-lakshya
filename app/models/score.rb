class Score < ActiveRecord::Base
  belongs_to :club
  belongs_to :user

  validates :club, :user, :date, :range,
            :score, presence: true
end
