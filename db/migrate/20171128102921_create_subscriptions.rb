class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :coins_required
      t.integer :month_duration
      t.integer :add_ons_count
      t.boolean :is_corporate_subscription, default: true
      t.boolean :is_custom_notification_subscribe, default: true
      t.integer :bulk_upload_count
      t.boolean :is_repost_allowed_subscribe, default: true
      t.integer :draft_count
      t.integer :schedule_count
      t.integer :custom_folder_count
      t.boolean :is_auto_responder_subscribe, default: true
      t.boolean :is_add_calender_subscribe, default: true
      t.boolean :is_social_media_subscribe, default: true
      t.boolean :is_invoice_subscribe, default: true
      t.integer :sub_user_count
      t.boolean :is_custom_banner, default: true
      t.integer :chat_templates_count
      t.boolean :is_sms_notification_subscribe, default: true

      t.timestamps
    end
  end
end
