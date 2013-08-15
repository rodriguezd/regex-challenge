class CreateInStringRegexes < ActiveRecord::Migration
  def change
    create_table :in_string_regexes do |t|
      t.integer :regex_id
      t.integer :in_string_id

      t.timestamps
    end
  end
end
