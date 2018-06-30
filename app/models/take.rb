class Take < ApplicationRecord
    has_many :take_comments, dependent: :destroy
end
