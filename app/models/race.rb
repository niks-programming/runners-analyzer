class Race < ApplicationRecord
    has_one_attached :medal
    belongs_to :user
end
