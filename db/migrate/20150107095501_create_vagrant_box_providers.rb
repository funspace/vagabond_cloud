class CreateVagrantBoxProviders < ActiveRecord::Migration
  def change
    create_table :vagrant_box_providers do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
