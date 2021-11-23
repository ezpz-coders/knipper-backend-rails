class CreateSnippet < ActiveRecord::Migration[6.1]
  def change
    create_table :snippets do |t|
      t.string :languages
      t.integer :folder_id

      t.timestamps
    end
  end
end
