require "sinatra"
get("/howdy") do
  return "Hello, world!"
end
get("/") do 
 lucky_num = rand(100)
  return "Your lucky number is " + lucky_num.to_s
end
get("/giraffe") do 
  "hopefully this shows up"
end 
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
get("/dice/2/10") do
first_die =rand(1..10)
second_die =rand(1..10)
sum = first_die + second_die

outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
"<h1>2d10/<h1>
  <p>#{outcome}</p>"
end
