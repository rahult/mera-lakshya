class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable,
         :timeoutable

  belongs_to :club
  has_many   :scores

  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :first_name, :last_name, :club_id

  def name
    "#{first_name} #{last_name}".strip
  end

  alias :to_s :name

  def data
    scores.map { |s| [s.date.to_i * 1000, s.score] }.inspect
  end
end
