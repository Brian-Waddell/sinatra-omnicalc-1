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
  @the_result = @the_num ** 2.to_f
  erb(:square_results)
end

get("/square_root/new") do 

  erb(:square_root_new)
end 

get("/square_root/results") do 
@num = params.fetch("users_number").to_f
@result = Math.sqrt(@num).to_f
 erb(:square_root_results)
end 

get("/payment/new") do 

  erb(:payment_new)
  end 

  get("/payment/results") do 
   
    @rate = params.fetch("user_apr").to_f 
    @apr = @rate.to_fs(:percentage, { :precision => 4})
    @num_of_periods = params.fetch("user_years").to_f 
    @present_value = params.fetch("user_principal").to_f
    @pv = @present_value.to_fs(:currency)
    @n =  -1 * @num_of_periods * 12
    r =  (@rate / 12.0) / 100
    numerator =  r * @present_value
    demonminator = 1 - (1 + r) ** @n 
   
    @p = numerator / demonminator
    @payment = @p.to_fs(:currency)

    erb(:payment_results)
  end 

  get("/random/new") do 

    

    erb(:random_new)
  end 

  get("/random/results") do 

    @mini = params.fetch("user_min").to_f
    @maxi = params.fetch("user_max").to_f

    @random = rand(@mini .. @maxi).to_f

    erb(:random_results)
  end 
