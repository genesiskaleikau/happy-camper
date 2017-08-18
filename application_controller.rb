require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end

post '/' do
  # camp=params[:sanfrancisco]
  interest=params[:interest]
  gender=params[:gender]
  budget=params[:budget]
  duration=params[:duration]
  @sanfrancisco=choose_camp("sanfrancisco", interest, duration, gender, budget)
  @sanfranciscoarray=@sanfrancisco.split("++")
  @title=@sanfranciscoarray[0]
  @time=@sanfranciscoarray[1]
  @cost=@sanfranciscoarray[2]
  @gender=@sanfranciscoarray[3]
  @link=@sanfranciscoarray[4]
  @location=@sanfranciscoarray[5]
  @camppreview=@sanfranciscoarray[6]
  @ourteamrating=@sanfranciscoarray[7]
  @ourcomments=@sanfranciscoarray[8]
  return erb :results
  
end

  


end