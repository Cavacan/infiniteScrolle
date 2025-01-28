class CreateJoinTableListsSchedules < ActiveRecord::Migration[7.1]
  def change
    create_join_table :lists, :schedules do |t|
      # t.index [:list_id, :schedule_id]
      # t.index [:schedule_id, :list_id]
    end
  end
end
