require 'launchy'

10.times do 
puts "ruby on rails"	
end

coins = ["bit", "비트코인", "이더리움"]
url = "https://search.naver.com/search.naver?query="
coins.each do |coin|
 	 link = url + coin
	Launchy.open(link)  
end