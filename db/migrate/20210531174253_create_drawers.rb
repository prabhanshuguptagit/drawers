class CreateDrawers < ActiveRecord::Migration[6.1]
  def change
    create_table :drawers, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
