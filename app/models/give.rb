class Give < ApplicationRecord
    has_many :give_comments, dependent: :destroy
end
