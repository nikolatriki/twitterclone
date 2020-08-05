class AddCreatorToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :creator, :string
  end
end
