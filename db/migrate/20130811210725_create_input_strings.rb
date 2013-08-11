class CreateInputStrings < ActiveRecord::Migration
  def change
    create_table :input_strings do |t|
      t.text :string
      t.integer :output_string_id

      t.timestamps
    end
  end
end
