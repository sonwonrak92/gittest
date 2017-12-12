Dir.chdir("files")

#30개의 파일을 만듭니다.
# 1.txt ~ 30.txt

30.times do |n|
	n = n+1
out_file = File.new(n.to_s + ".txt", "w")
out_file.puts(n.to_s + "write")
end