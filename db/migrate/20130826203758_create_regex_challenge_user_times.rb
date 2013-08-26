class CreateRegexChallengeUserTimes < ActiveRecord::Migration
  def change
    create_table :regex_challenge_user_times do |t|
      t.integer :input_output_id
      t.integer :user_id
      t.integer :time

      t.timestamps
    end
  end
end
