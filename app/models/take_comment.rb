class TakeComment < ApplicationRecord
    belongs_to :take
    belongs_to :user
end
