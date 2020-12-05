class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :pin_boards, dependent: :destroy
end
