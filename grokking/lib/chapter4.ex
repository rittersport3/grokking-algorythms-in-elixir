defmodule Chapter4 do

	def recursion_sum() do
		0
	end
	def recursion_sum([]) do
		0
	end
	def recursion_sum([[a]]) do
 	 	recursion_sum(a)
	end
	

 	def recursion_sum([h | t])  do
 	 recursion_sum(h) + recursion_sum(t)
 	end

 	def recursion_sum(a) do
	 a
	end


	def list_c(lis), do: list_counter(lis, 0)

	defp list_counter([], acc), do: acc
	defp list_counter([h | t], acc), do: list_counter(h, 0) + list_counter(t, acc)
	defp list_counter(_, acc), do: acc + 1



	def find_maxima([]), do: nil
	def find_maxima([a, b]) do

		case find_maxima(a) > find_maxima(b) do
			true -> find_maxima(a)
			false -> find_maxima(b)
		end
	end
	def find_maxima([a | b]) do

		find_maxima([find_maxima(a), find_maxima(b)]) 
	end
	def find_maxima(a), do: a 



	def binary_search(list, guess) do
		mid_pt = round(Enum.count(list)/2)-1
		end_pt = Enum.count(list)-1

		IO.puts("mid_pt #{mid_pt}")
		IO.puts("end_pt #{end_pt}")
		IO.puts("Enum.at(list, mid_pt)")
		IO.inspect Enum.at(list, mid_pt)
		IO.inspect list

		case Enum.at(list, mid_pt) do
			nil -> nil
		
			^guess -> 
				IO.puts "Success!"
				guess
			x when x < guess ->
				IO.puts "x < guess"
				binary_search(Enum.slice(list, mid_pt+1..end_pt), guess)
			x when x > guess ->
				IO.puts "x > guess"
				binary_search(Enum.slice(list, 0..mid_pt-1), guess)

		end

	end



end

Chapter4.recursion_sum([1, 1, 1, [1, 2]])