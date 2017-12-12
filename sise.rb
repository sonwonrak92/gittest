require 'nokogiri'
require 'httparty'

url = 'http://finance.naver.com/sise/'
response = HTTParty.get(url)

text = Nokogiri::HTML(response.body)

kospi = text.css('#KOSPI_now').text
kosdaq = text.css('#KOSDAQ_now').text
kpi = text.css('#KPI200_now').text

puts '코스닥    ' + kospi
puts '코스피    ' + kosdaq
puts '코스피200 ' + kpi