#第一个参数为定时的时间

total_time = ARGV[0].to_i
interval_time = ARGV[1].nil? ? 10 : ARGV[1].to_i
gone_time = 0

while true do 
  sleep(60*interval_time)
  gone_time+=interval_time
  if gone_time >= total_time
    `notify-send "Time Out!" -i /img_folder/time_out.png`
     break
  else
    `notify-send "已经过去#{gone_time}分钟了            还剩#{total_time-gone_time}分钟" -i /img_folder/time.png`
  end 
end
