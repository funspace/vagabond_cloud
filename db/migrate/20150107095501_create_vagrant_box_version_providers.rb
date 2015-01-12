class CreateVagrantBoxVersionProviders < ActiveRecord::Migration
  def change
    create_table :vagrant_box_version_providers do |t|
      t.string :name
      t.string :url
      t.references :version, index: true

      t.timestamps
    end
  end
end
