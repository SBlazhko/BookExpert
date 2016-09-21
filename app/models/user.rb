class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  has_one :biography, dependent: :destroy
  has_many :workGenres, dependent: :destroy
  has_many :news
  has_many :send_mn, class_name: 'Manuscript', foreign_key: 'sender_id'
  has_many :received_mn, class_name: 'Manuscript', foreign_key: 'receiver_id'
  
  has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "cat.jpeg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  enum role: [:user, :reviwer, :admin]

  validates :name, presence: true, length: {maximum: 30}
  validates :role, presence: true	
end
