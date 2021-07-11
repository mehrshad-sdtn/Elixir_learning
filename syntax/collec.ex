defmodule Main1 do
  def swap_all([head|tail]) do
    [h|t] = tail
    if h < head do
      new_list = [h | [head | t]]
      [h|t] = new_list
      IO.inspect(new_list)
      swap_all(t)
    end


  end

  def swap_all([]) do
    nil
  end

  def driver do
    swap_all([12, 1, 5, 2, 23])
  end

end
