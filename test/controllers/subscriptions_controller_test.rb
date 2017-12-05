require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscription = subscriptions(:one)
  end

  test "should get index" do
    get subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_subscription_url
    assert_response :success
  end

  test "should create subscription" do
    assert_difference('Subscription.count') do
      post subscriptions_url, params: { subscription: { add_ons_count: @subscription.add_ons_count, bulk_upload_count: @subscription.bulk_upload_count, chat_templates_count: @subscription.chat_templates_count, coins_required: @subscription.coins_required, custom_folder_count: @subscription.custom_folder_count, draft_count: @subscription.draft_count, is_add_calender_subscribe: @subscription.is_add_calender_subscribe, is_auto_responder_subscribe: @subscription.is_auto_responder_subscribe, is_corporate_subscription: @subscription.is_corporate_subscription, is_custom_banner: @subscription.is_custom_banner, is_custom_notification_subscribe: @subscription.is_custom_notification_subscribe, is_invoice_subscribe: @subscription.is_invoice_subscribe, is_repost_allowed_subscribe: @subscription.is_repost_allowed_subscribe, is_sms_notification_subscribe: @subscription.is_sms_notification_subscribe, is_social_media_subscribe: @subscription.is_social_media_subscribe, month_duration: @subscription.month_duration, schedule_count: @subscription.schedule_count, sub_user_count: @subscription.sub_user_count } }
    end

    assert_redirected_to subscription_url(Subscription.last)
  end

  test "should show subscription" do
    get subscription_url(@subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscription_url(@subscription)
    assert_response :success
  end

  test "should update subscription" do
    patch subscription_url(@subscription), params: { subscription: { add_ons_count: @subscription.add_ons_count, bulk_upload_count: @subscription.bulk_upload_count, chat_templates_count: @subscription.chat_templates_count, coins_required: @subscription.coins_required, custom_folder_count: @subscription.custom_folder_count, draft_count: @subscription.draft_count, is_add_calender_subscribe: @subscription.is_add_calender_subscribe, is_auto_responder_subscribe: @subscription.is_auto_responder_subscribe, is_corporate_subscription: @subscription.is_corporate_subscription, is_custom_banner: @subscription.is_custom_banner, is_custom_notification_subscribe: @subscription.is_custom_notification_subscribe, is_invoice_subscribe: @subscription.is_invoice_subscribe, is_repost_allowed_subscribe: @subscription.is_repost_allowed_subscribe, is_sms_notification_subscribe: @subscription.is_sms_notification_subscribe, is_social_media_subscribe: @subscription.is_social_media_subscribe, month_duration: @subscription.month_duration, schedule_count: @subscription.schedule_count, sub_user_count: @subscription.sub_user_count } }
    assert_redirected_to subscription_url(@subscription)
  end

  test "should destroy subscription" do
    assert_difference('Subscription.count', -1) do
      delete subscription_url(@subscription)
    end

    assert_redirected_to subscriptions_url
  end
end
