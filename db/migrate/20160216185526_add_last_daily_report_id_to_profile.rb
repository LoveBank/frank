class AddLastDailyReportIdToProfile < ActiveRecord::Migration
  def change
    add_column :frank_profiles, :last_daily_report_id, :integer
  end
end
