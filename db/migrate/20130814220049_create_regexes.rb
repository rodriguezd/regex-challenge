class CreateRegexes < ActiveRecord::Migration
  def change
    create_table :regexes do |t|
      t.string :expression

      t.timestamps
    end
  end
end
