class News < ApplicationRecord
	belongs_to :user

	has_attached_file :image, styles: { medium: "250x250>", thumb: "150x150>" }, default_url: "cat.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  default_scope {order("created_at DESC")}
end
