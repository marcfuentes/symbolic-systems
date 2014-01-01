class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url, :name

 


  validates :description, :name, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
  has_many :comments

  def image_remote_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  end
end
