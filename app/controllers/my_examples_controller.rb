class MyExamplesController < ApplicationController
  def fortune
    fortunes = ["Your future looks bright!", "Your future looks horrible!", "Your future looks mediocre."]
    render json: { fortune: fortunes.sample }
  end

  def six_numbers
    n = rand(1..60)
    6.times do
      n = n + " ," + rand(1..60)
    end

    render json: { lotto_numbers: n }
  end
end
