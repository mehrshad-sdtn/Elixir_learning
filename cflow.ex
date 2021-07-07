defmodule Main do
  def helper(random_number, g) do
    if g == random_number do
      IO.puts "nicee"
    else
      if g < random_number do
        {newg, _} = IO.gets("try larger: ") |> Integer.parse
        helper(random_number, newg)
      else
        {newg, _} = IO.gets("try smaller: ") |> Integer.parse
        helper(random_number, newg)
      end
    end


  end

  def game() do
    random = :rand.uniform(30)
    {g, _} = IO.gets("guess a number 1 to 30:") |> Integer.parse
    helper(random, g)
  end

end
