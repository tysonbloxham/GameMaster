require 'pry'
require_relative 'classes'



def class_select
  @choosable_classes = ["Assassin", "Gunzerker", "Commando", "Siren", "Psycho"].sort #TODO: figure out Mechromancer

  puts "Please choose from the following classes: "
  @choosable_classes.each do |choice|
    puts choice
  end

  chosen_class = gets.chomp.strip.capitalize

  class_validate (chosen_class)

  case chosen_class
  when "Gunzerker"
    @player = Gunzerker.new
  when "Assassin"
    @player = Assassin.new
  when "Siren"
    @player = Siren.new
  when "Commando"
    @player = Commando.new
  when "Psycho"
    @player = Psycho.new
  else
    puts "Why you no pick Gunzerker???!"
  end
end

def class_validate (choice)
  if @choosable_classes.include?(choice)
    puts "#{choice} it is!"
  else
    system "clear" or system "cls"
    class_select
  end
end

class_select
@player.rampage
p @player.evasion
p @player.health
