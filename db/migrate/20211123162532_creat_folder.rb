class CreatFolder < ActiveRecord::Migration[6.1]
  create_table :folder do |t|
    t.string :languages
    t.integer :snippet_id
  end
end
