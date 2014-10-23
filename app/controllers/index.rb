get '/' do
  # Look in app/views/index.erb
  erb :index

end

post '/word' do
  redirect to("/#{params[:user_input]}")
end


get '/:word' do
  sort = params[:word].split("").sort.join("")
  @anagrams = Word.where(sorted: sort)
  erb :anagram
end