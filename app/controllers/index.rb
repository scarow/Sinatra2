get '/' do
  @grandma = params[:grandma]

  erb :index
end
 
post '/grandma' do
 # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  if params[:user_input] == params[:user_input].upcase
   @grandma = "No, not since #{rand(1970..1983)}"
  else
    @grandma = "SPEAK UP SONNY!"
  end
  @grandma
end
