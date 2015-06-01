class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :url
      t.string :caption
      t.string :name

      t.timestamps
    end
  end
end
