class CreateBoardPins < ActiveRecord::Migration[6.0]
  def change
    create_table :board_pins do |t|
      t.references :board, null: false, foreign_key: true
      t.references :pin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
