class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.belongs_to :tag_kind

      t.timestamps
    end
  end
end
