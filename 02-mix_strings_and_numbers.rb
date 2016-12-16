# "Learn to Program" by Chris Pine
# CHAPTER 5 - Mixing it up (strings + integers concatenation)

# Add functions

def get_full_name (the_name, the_middle_name, the_last_name)
  the_name = the_name.capitalize;
  the_middle_name = the_middle_name.capitalize;
  the_last_name = the_last_name.capitalize;

  if (the_middle_name.empty? || the_middle_name.downcase == "no" || the_middle_name.downcase == "n" )
    the_middle_name = "";
  else
    the_middle_name += " ";
  end

  return full_name = the_name + " " + the_middle_name + the_last_name;
end

def get_plus_one_number the_number
  return the_number += 1;
end

def print_decoration
  puts "~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0\n";
end

def print_full_name
  puts "What is your first name?"
  the_name = gets.chomp.strip;

  puts "Do you have a middle name? If so, which is it?"
  the_middle_name = gets.chomp.strip;

  puts "What is your last name?"
  the_last_name = gets.chomp.strip;

  print_decoration();

  full_name = get_full_name(the_name, the_middle_name, the_last_name);

  puts "So your name is #{full_name}, it's nice meeting you #{full_name}";

  print_decoration();
end

def print_plus_one_number
  puts "What is your favorite number?"
  the_number = gets.to_i;

  my_number = get_plus_one_number(the_number);

  print_decoration();

  puts "So #{the_number}, uh? \n
  Guess what, my favorite number is #{my_number} \n
  My number is bigger than yours. \n
  >:D"

  print_decoration();
end

# Add menu

def start_menu
  exit_flag = false;

  while exit_flag === false

    puts "Select an option number from the menu \n
    [1] Full name creator \n
    [2] My number is bigger \n
    [3] Exit \n
    \n"
    menu_option = gets.to_i;

    case menu_option

      when 1
        puts "Well, I'll tell you your name\n";
        print_full_name();

      when 2
        puts "Now let\'s share intimate information\n";
        print_plus_one_number();

      when 3
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