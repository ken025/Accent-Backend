class RemoveFkConstraints < ActiveRecord::Migration[6.0]
  def up
    execute "ALTER TABLE board_pins DROP CONSTRAINT fk_rails_d4c80b1934;"
  end
end
