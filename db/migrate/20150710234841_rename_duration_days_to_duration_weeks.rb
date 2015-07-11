class RenameDurationDaysToDurationWeeks < ActiveRecord::Migration
  def change
    rename_column :programs, :duration_days, :duration_weeks

  end
end
