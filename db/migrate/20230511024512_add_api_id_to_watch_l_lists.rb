class AddApiIdToWatchLLists < ActiveRecord::Migration[7.0]
  def change
    add_column :watch_l_lists, :api_id, :integer
  end
end
