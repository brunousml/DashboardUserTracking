class CreateUsertracks < ActiveRecord::Migration[5.0]
  def change
    create_table :usertracks do |t|
      t.string :guid
      t.string :url
      t.string :datetime

      t.timestamps
    end
  end
end
