class CreateOutputStrings < ActiveRecord::Migration
  def change
    create_table :output_strings do |t|
      t.text :string
      t.integer :input_string_id

      t.timestamps
    end
  end
end
