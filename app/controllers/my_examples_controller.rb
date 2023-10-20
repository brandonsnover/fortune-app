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
    render json: numbers
  end
end
