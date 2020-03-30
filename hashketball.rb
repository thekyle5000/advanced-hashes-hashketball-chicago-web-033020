# Write your code here!
require 'pry'
def game_hash
  {
    :home =>
    {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
        ]
    },
    
    :away =>
    {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
        {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
        ]
    }
 }
end

def all_players_array
  all_array = []
  game_hash[:home][:players].each { |player| all_array << player }
  game_hash[:away][:players].each { |play| all_array << play }
  all_array
end


def num_points_scored(name)
  point_value = 0
all_players_array.each do |k|
  if k[:player_name] == name
    point_value = k[:points]
  end
end
point_value
end


def shoe_size(name)
shoe_size_value = 0
all_players_array.each do |k|
  if k[:player_name] == name
    shoe_size_value = k[:shoe]
  end
end
shoe_size_value
end

def team_colors(name)
  color = nil
if name == "Brooklyn Nets"
  color = game_hash[:home][:colors]
else 
  color = game_hash[:away][:colors]
end
color
end


def team_names
team_array = []
game_hash.each do |k, v|
team_array << v[:team_name] 
end
team_array
end 


def player_numbers(name)
number_array = []
if name == "Brooklyn Nets"
  game_hash[:home][:players].each do |k|
  number_array << k[:number]
  end
else 
  game_hash[:away][:players].each do |k|
  number_array << k[:number]
end
end
number_array
end


def player_stats(name)
play_hash = nil
all_players_array.each do |k|
if name == k[:player_name]
  play_hash = k
end
end
play_hash.delete(:player_name)
play_hash
end

def big_shoe_rebounds
shoe_array = []
all_players_array.each do |k|
shoe_array << k[:shoe]
end
s_shoe_array = shoe_array.sort
all_players_array.each do |e|
if e[:shoe] = s_shoe_array.max
end
end

