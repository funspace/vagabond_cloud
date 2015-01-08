class CreateVagrantBoxVersions < ActiveRecord::Migration
  def change
    create_table :vagrant_box_versions do |t|
      t.string :version
      t.string :status
      t.text :description_html
      t.text :description_markdown
      t.references :boxes, index: true

      t.timestamps
    end
  end
end
