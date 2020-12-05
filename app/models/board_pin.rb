class BoardPin < ApplicationRecord
  belongs_to :board, optional: true
  belongs_to :pin, optional: true
end
