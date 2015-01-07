class CreateVagrantBoxes < ActiveRecord::Migration
  def change
    create_table :vagrant_boxes do |t|
      t.string :name
      t.text :description
      t.string :short_description
      t.references :versions, index: true

      t.timestamps
    end
  end
end
