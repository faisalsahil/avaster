SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = 'nav side-menu'
    primary.selected_class = 'active'
    if @current_user_role == AppConstants::SUPER_ADMIN
      primary.item :dashboards, content_tag(:i, "", :class => "fa fa-dashboard") + "Dashboard", root_url, :highlights_on => /\/dashboards/
      primary.item :users, content_tag(:i, "", :class => "fa fa-user") + "Users", users_path, :highlights_on => /\/users/
      primary.item :countries, content_tag(:i, "", :class => "fa fa-exchange") + "Settings", countries_path, :highlights_on => /\/countries/ do |secondary|
        secondary.dom_class = 'sub-menu'
        secondary.item :countries, content_tag(:i, "", :class => "fa fa-exchange") + "Counrty", countries_path, :highlights_on => lambda { params['type'].blank? && on_controller?("countries") }
        secondary.item :countries, content_tag(:i, "", :class => "fa fa-exchange") + "Currency", currencies_path, :highlights_on => lambda { params['type'].blank? && on_controller?("currencies") }
        secondary.item :countries, content_tag(:i, "", :class => "fa fa-exchange") + "Category", categories_path, :highlights_on => lambda { params['type'].present? && on_controller?("categories") }
        # secondary.item :campaigns, content_tag(:i, "", :class => "fa fa-exchange") + "Packages", packages_path, :highlights_on => lambda { params['type'].present? && on_controller?("packages") }
        # secondary.item :campaigns, content_tag(:i, "", :class => "fa fa-exchange") + "Featured Packages", campaigns_path(type: 'errors'), :highlights_on => lambda { params['type'].present? && on_controller?("campaigns") }
        # secondary.item :campaigns, content_tag(:i, "", :class => "fa fa-exchange") + "Subscriptions", campaigns_path(type: 'errors'), :highlights_on => lambda { params['type'].present? && on_controller?("campaigns") }
        # secondary.item :campaigns, content_tag(:i, "", :class => "fa fa-exchange") + "Add Ons", campaigns_path(type: 'errors'), :highlights_on => lambda { params['type'].present? && on_controller?("campaigns") }
      end
    end

  end
end