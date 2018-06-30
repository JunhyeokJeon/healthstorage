class Give < ApplicationRecord
    has_many :give_comments, dependent: :destroy

    mount_uploader :image, S3Uploader
    
    def self.search(search)
        where("title || content LIKE ?", "%#{search}%") 
    end

end
