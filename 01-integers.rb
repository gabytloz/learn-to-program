# "Learn to Program" by Chris Pine
# CHAPTER 2 - Numbers

# Use constants for values of the program

SECONDS = 60; # seconds in a minute
MINUTES = 60; # minutes in an hour
HOURS = 24; # hours in a day
DAYS = 365; # days in a year

# Add functions

def get_input_value
  return my_input =  gets.to_i;
end

def print_decoration
  puts "~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0 ~ 0\n";
end

def print_hours_in_year numberyears
  print_decoration();
  puts "Cool, it seems there are " + (HOURS * DAYS * numberyears).to_s + " hours in " + numberyears.to_s + " years";
  print_decoration();
end

def print_decades_in_years numberyears
  decades = numberyears/10;
  print_decoration();
  decades > 0 ? puts("There are " + decades.to_s + " decades in " + numberyears.to_s + " years") : puts("There's not even a decade in " + numberyears.to_s + " years");
  print_decoration();
end

def print_seconds_old numberyears
  print_decoration();
  puts "So that means that with " + numberyears.to_s + " years you are " +  (SECONDS * MINUTES * HOURS * DAYS * numberyears).to_s + " seconds old ";
  print_decoration();
end

def print_years_old numberseconds
  print_decoration();
  puts "Yeah... that means that with " + numberseconds.to_s + " seconds you are " +  (numberseconds / (SECONDS * MINUTES * HOURS * DAYS)).to_s + " years old ";
  print_decoration();
end

# Add menu

def start_menu
  exit_flag = false;

  while exit_flag === false

    puts "Select an option number from the menu \n
    [1] See how many hours are there in certain number of years\n
    [2] See how many decades are in certain number of years\n
    [3] Get how old are you in seconds (years to seconds)\n
    [4] Get how many years old are you, given a certain amount of seconds (reverse engineering from option {3})\n
    [5] Exit \n
    \n"
    menu_option = gets.to_i;

    case menu_option

      when 1
        puts "Give me an amount of years\n";
        print_hours_in_year(get_input_value);

      when 2
        puts "Give me an amount of years\n";
        print_decades_in_years(get_input_value);

      when 3
        puts "Give me an amount of years\n";
        print_seconds_old(get_input_value);

      when 4
        puts "Give me an amount of seconds\n";
        print_years_old(get_input_value);

      when 5
        puts "Well, I guess we are done then\n";
        exit_flag = true;

      else
        puts "Select a valid option from the menu, only numbers please.\n"
    end # /Case

    exit_flag === false ? puts("\nThat was fun!\n ======================= \n So,  what do you want to do now? \n") : puts("\nBye");
  end # /While
end

start_menu();