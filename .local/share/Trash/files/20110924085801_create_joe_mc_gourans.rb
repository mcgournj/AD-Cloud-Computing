class CreateJoeMcGourans < ActiveRecord::Migration
  def self.up
    create_table :joe_mc_gourans do |t|
      t.Joe_McGouran@Yahoo.IE :email

      t.timestamps
    end
  end

  def self.down
    drop_table :joe_mc_gourans
  end
end
