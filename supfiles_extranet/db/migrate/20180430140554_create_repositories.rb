class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :repositories do |t|
      t.string :name
      t.references :repository, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
