class MyExamplesController < ApplicationController
  def fortune
    number = rand(3)
    array = ["You will have good luck", "You will not have good luck", "no"]
    render json: array[number]
  end

  def lotto
    count = 0
    numbers = []
    while count < 6
      number = rand(59) + 1
      numbers.push(number)
      count += 1
    end
    render json: numbers.join(" ")
  end

  def bottles
    count = 99
    song = []
    while count > 1
      song.push("#{count} bottles of beer on the wall. #{count} bottles of beer! Take one down pass it around.")
      count -= 1
    end
    song.push("1 bottle of beer on the wall. 1 bottle of beer! Take one down pass it around. No more bottles of beer on the wall.")
    render json: song
  end
end
