class Listing < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x", thumb: "100x" }, default_url: "http://demo.makitweb.com/broken_image/images/noimage.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
