class CreateInStrings < ActiveRecord::Migration
  def change
    create_table :in_strings do |t|
      t.text :string

      t.timestamps
    end
  end
end
