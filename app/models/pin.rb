class Pin < ActiveRecord::Base
	belongs_to :user

	# Paperclip

	# has_attached_file :image #, :styles => { :medium => "300x300>", :thumb => "100x100>" } #:default_url => "/images/:style/missing.png"


   has_attached_file :image
    # :styles => {
    #   :thumb => "100x100#",
    #   :small  => "150x150>",
    #   :medium => "200x200" }

    
   


 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/		
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
