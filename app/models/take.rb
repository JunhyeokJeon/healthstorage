class Take < ApplicationRecord
    has_many :take_comments, dependent: :destroy

    mount_uploader :image, S3Uploader
    
    def self.search(search)
        where("title || content LIKE ?", "%#{search}%") 
    end

end
