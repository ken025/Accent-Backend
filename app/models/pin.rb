class Pin < ApplicationRecord
    has_many :boards, dependent: :destroy
end
