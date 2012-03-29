class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable,
         :timeoutable

  belongs_to :club
  has_many   :scores

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :first_name, :last_name, :club_id

  def to_s
    "#{first_name} #{last_name}".strip
  end

  def data
    scores.map { |s| [s.date.to_i, s.score] }.inspect
  end
end
