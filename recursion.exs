ExUnit.start

defmodule Recursion do
	use ExUnit.Case



	def recursion_sum([]), do: 0
	def recursion_sum([a]), do: a
	def recursion_sum([h | t]), do: h + recursion_sum(t)

	test "the truth" do
    	assert 1 + 1 == 2
  	end


end


