# "Learn to Program" by Chris Pine
# CHAPTER 6 - More about methods

# Add functions

def get_letter_count (the_word)
  return the_word.length;
end

def print_decoration
  puts "~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0\n";
end

def print_name_count
  puts "What is your first name?"
  the_name = gets.chomp.strip..capitalize;

  puts "Do you have a middle name? If so, which is it?"
  the_middle_name = gets.chomp.strip;

  puts "What is your last name?"
  the_last_name = gets.chomp.strip;

  puts "#{the_name},\n
  Did you know that your name has #{get_letter_count(the_name)+ get_letter_count(the_middle_name) +get_letter_count(the_last_name) } characters?"
  print_decoration();
end

def yell_something
  puts "So... did you have something to say?"
  phrase = gets.chomp.strip;

  puts ("What do you mean '#{phrase}'?! Get out! You are fired!!").upcase;
end

def print_table
  line_width = 60;

  puts ("Table of contents".center(line_width).upcase);
  puts ("Chapter 1: Getting started".ljust(line_width/2) + "Page 1".rjust(line_width/2));
  puts ("Chapter 2: Numbers".ljust(line_width/2)  + "Page 9".rjust(line_width/2));
  puts ("Chapter 3: Letters".ljust(line_width/2)  + "Page 13".rjust(line_width/2));
end

# Add menu

def start_menu
  exit_flag = false;

  while exit_flag === false

    puts "Select an option number from the menu \n
    [1] Count characters in name \n
    [2] Being a boss \n
    [3] Show a table \n
    [4] Exit \n
    \n"
    menu_option = gets.to_i;

    case menu_option

      when 1
        puts "Well, let's count\n";
        print_name_count;

      when 2
        puts "Now I'll become an angry boss... EJEM...\n";
        yell_something;

      when 3
        puts "I'll show you a sample in alignment";
        print_table;

      when 4
        puts "Well, I guess we are done then\n";
        exit_flag = true;

      else
        puts "Select a valid option from the menu, only numbers please.\n"
    end # /Case

    exit_flag === false ? puts("\nThat was fun!\n ======================= \n So,  what do you want to do now? \n") : puts("\nBye");
  end # /While
end

start_menu();