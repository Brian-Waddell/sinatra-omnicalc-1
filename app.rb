require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do 

  erb(:new_square_cal)
end 

get ("/square/results") do 
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2 
  erb(:square_results)
end

get("/square_root/new") do 

  erb(:square_root_new)
end 

get("/square_root/results") do 
@num = params.fetch("users_number").to_f
@result = Math.sqrt(@num)
 erb(:square_root_results)
end 

get("/payment/new") do 

  erb(:payment_new)
  end 

  get("/payment/results") do 
   
    @Rate = params.fetch("user_apr").to_f / 100
    @num_of_periods = params.fetch("user_years").to_f * 12 
    @present_value = params.fetch("user_principal").to_f
    
    numerator =  @Rate/12(present_value
    demonminator = 1-(1+@Rate)-@num_of_periods
    @p = numerator/demonminator

    erb(:payment_results)
  end 
