if Role.all.blank?
  roles_array=['Super Admin', 'Customer']
  roles_array.each do |role|
    Role.create!(name: role)
  end
end

if User.all.blank?
  user                       = User.new
  user.first_name            = 'Admin'
  user.last_name             = 'Admin'
  user.email                 = 'admin@gmail.com'
  user.password              = '123456'
  user.password_confirmation = '123456'
  
  user.save(validate: false)

  user.add_role(AppConstants::SUPER_ADMIN)
end


@countries = Country.all
if @countries.blank?
  url      = "https://restcountries.eu/rest/v2/all"
  response = HTTParty.get(URI.encode(url))
  
  response.each do |country|
    county_code              = Country.new
    county_code.country_name = country['name']
    county_code.alpha2_code  = country['alpha2Code']
    county_code.alpha3_code  = country['alpha3Code']
    county_code.calling_code = "+#{country['callingCodes'][0]}"
    county_code.flag_url     = country['flag']
    county_code.save
    
    country['currencies'].each_with_index do |c, index|
      currency               = Currency.new
      currency.currency_name = c['name']
      currency.iso_code      = c['code']
      currency.symbol        = c['symbol']
      currency.country       = county_code
      currency.save
    end
  end
end