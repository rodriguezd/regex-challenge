class CreateOutputChallengeUserTimes < ActiveRecord::Migration
  def change
    create_table :output_challenge_user_times do |t|
      t.integer :in_string_regex_id
      t.integer :user_id
      t.integer :time

      t.timestamps
    end
  end
end
