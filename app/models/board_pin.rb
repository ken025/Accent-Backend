class BoardPin < ApplicationRecord
  belongs_to :boards
  belongs_to :pin
end
