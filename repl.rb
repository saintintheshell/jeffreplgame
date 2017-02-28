alarm_triggered = true
snooze_count = 0
until alarm_triggered == false
  puts "RING RING RING"
  puts "Time to wake up!"
  puts "Options: snooze, wake up, throw alarm out the window"
  option = gets.chomp


  case option
  when "snooze"
      if snooze_count == 0
        puts "Don't keep this up or you wont have coffee and we know you're cranky without your coffee.."
      elsif snooze_count == 1
        puts "Ok, but you're gonna be late."
      else
        puts "Looks like you're out of time bub..."
        alarm_triggered = false
      end
      snooze_count += 1
  when "wake up"
    puts "Got time for coffee?"
    puts "Options: set coffee maker, I'm late!!!"
      option = gets.chomp
    case option
    when "set coffee maker"
      puts "Great! We know how you get without your coffee."
      alarm_triggered = false
    when "I'm late!!!"
      puts "I told you...Run Forrest Runnnn!!!"
      alarm_triggered = false
    else
      puts "Sounds like you're mumbling...just GO!"
      alarm_triggered = false
    end
  when "throw alarm out the window"
      puts "I'll beeee BACKKK!!!!"
    alarm_triggered = false
  else
      puts "I'm only going to get louder!!!!"
      puts "Pick something..."
  end
end
