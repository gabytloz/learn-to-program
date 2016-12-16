# "Learn to Program" by Chris Pine
# CHAPTER 6 - More about methods

# Add functions


def get_leap_year_test(year_to_test)
  if year_to_test%4 == 0 && year_to_test%100 > 0
    return true
  elsif year_to_test%100 == 0 && year_to_test%400 == 0
    return true
  else
    return false
  end
end

def print_decoration
  puts "~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0\n"
end

def print_song
  i = 99

  while(i > 0)

    if i > 1
      puts "#{i} bottles of beer on the wall, #{i} bottles of beer\n"
      i -= 1
      puts "Take one down and pass it around, #{i} bottles of beer on the wall.\n\n"
    else
      puts "#{i} bottle of beer on the wall, #{i} bottle of beer\n"
      puts "Take one down and pass it around, no more bottles of beer on the wall.\n
      No more bottles of beer on the wall, no more bottles of beer.\n
Go to the store and buy some more, 99 bottles of beer on the wall.\n";
      i -= 1
    end
  end
end

def print_grandma_conversation (strikesback = false)
  while true
    year = 1930 + rand(20)

    my_input = gets.chomp.strip

    if my_input == "BYE"
      if strikesback == false
        # Needs 1 "BYE" to stop
        puts "BYE SWEETIE!"
        break

      elsif
        # Granny plays deaf, needs 3 "BYE" to stop
        number_of_byes = 1
        persistent = true

        while number_of_byes < 3 && persistent
          puts "What? I can't hear you!".upcase

          my_input = gets.chomp.strip

          if my_input == "BYE" && number_of_byes < 3
            number_of_byes += 1
          else
            persistent = false
          end
          if number_of_byes == 3 && persistent
            puts "ok... BYE SWEETIE!"
          end
        end
        if persistent == false
          puts "Huh? Speak up, sonny!".upcase
        else
          break
        end
      end
    elsif my_input == my_input.upcase && !my_input.empty?
      puts "No, not since #{year}!".upcase
    else
      puts "Huh? Speak up, sonny!".upcase
    end
  end
end

def wanna_go_again

  puts "Wanna go again? (y / n)"
  answer = gets.chomp.strip

  if answer.downcase == "yes" || answer.downcase == "y"
    return true
  else
    return false
  end
end

def print_leap_year
  keep_asking = true

  while keep_asking
    puts "What year should we check?\n"
    the_year = gets.to_i

    if the_year > 0
      if get_leap_year_test(the_year)
        puts "#{the_year} is a leap year"
      else
        puts "It seems #{the_year} is not a leap year"
      end
    else
      puts "That doesn't seem like a year to me"
    end

    if !wanna_go_again
      keep_asking = false
    end
  end
end

# Add menu

def start_menu
  exit_flag = false;

  while exit_flag === false

    puts "Select an option number from the menu \n
    [1] 99 bottles of beer \n
    [2] Talk to grandma \n
    [3] Talk to grandma. The lady strikes back \n
    [4] Leap years \n
    [5] Exit \n
    \n"
    menu_option = gets.to_i;

    case menu_option

      when 1
        puts "Well, let's sing a song!! \n";
        print_song

      when 2
        puts "What do you want to ask to grandma?\n";
        print_grandma_conversation

      when 3
        puts "What do you want to ask to grandma? She really feels lonely";
        print_grandma_conversation(true)

      when 4
        puts "Let's see if a year was a leap year";
        print_leap_year
      when 5
        puts "Well, I guess we are done then\n";
        exit_flag = true;

      else
        puts "Select a valid option from the menu, only numbers please.\n"
    end # /Case

    puts "\n\nPress any key to continue"
    gets
    exit_flag === false ? puts("\nThat was fun!\n ======================= \n So,  what do you want to do now? \n") : puts("\nBye");
  end # /While
end

start_menu();