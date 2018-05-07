class CreateSingleFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :single_files do |t|
      t.string :name
      t.references :repository, foreign_key: true

      t.timestamps
    end
  end
end
