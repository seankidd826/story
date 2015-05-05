class Momstory < ActiveRecord::Base

  has_attached_file :image, :styles => { :thumb => "100x100#", :small => "250x250>", :medium => "300x300" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
