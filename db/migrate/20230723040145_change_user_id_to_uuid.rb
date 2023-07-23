class ChangeUserIdToUuid < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :id, :string

    change_column_default :users, :id, -> { "gen_random_uuid()" }
  end
end
