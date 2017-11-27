json.extract! category, :id, :category_title, :is_restricted, :parent_id, :coins_required, :free_listing_allowed, :free_month_duration, :paid_month_duration, :is_active, :created_at, :updated_at
json.url category_url(category, format: :json)
