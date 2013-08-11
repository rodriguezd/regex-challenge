class CreateInputOutputStrings < ActiveRecord::Migration
  def change
    create_table :input_output_strings do |t|
      t.integer :output_string_id
      t.integer :input_string_id

      t.timestamps
    end
  end
end
