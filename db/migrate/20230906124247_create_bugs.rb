class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.string :type
      t.string :status
      t.references :project, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true
      t.references :qa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
