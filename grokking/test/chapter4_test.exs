defmodule Chapter4Test do
  use ExUnit.Case
  import Chapter4
  doctest Chapter4

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "empty sum" do
  	assert Chapter4.recursion_sum([]) == 0
  end

  test "single" do
  	assert Chapter4.recursion_sum([1]) == 1
  end

  test "triple" do
  	assert Chapter4.recursion_sum([1, 1, 1]) == 3
  end

  test "doubl" do
  	assert Chapter4.recursion_sum([1, 1, [1, 1]]) == 4
  end

  test "bonus q" do
  	assert Chapter4.recursion_sum([1, 1, [1, 1, [1], [[2]]]]) == 7
  end

  test "list counter 1" do
  	assert Chapter4.list_c([1, 2, 3]) == 3
  end

  test "list counter 2" do
  	assert Chapter4.list_c([]) == 0
  end

  test "list counter 3" do
  	assert Chapter4.list_c([3]) == 1
  end

  test "list counter bonus" do
  	assert Chapter4.list_c([1, 1, [1, 2]]) == 4
  end

  test "maximum list number " do
  	assert Chapter4.find_maxima([1, 2, 3, 4, 5]) == 5
  end
  test "maximum list number 2" do
  	assert Chapter4.find_maxima([1, 2, 3, [4, 5]]) == 5
  end
	test "maximum list number 3" do
  	assert Chapter4.find_maxima([[1, 2], 3, [4, 5]]) == 5
  end

  test "maximum list number 4" do
  	assert Chapter4.find_maxima([[8, 7], 3, [4, 5]]) == 8
  end

   test "maximum list number 5" do
  	assert Chapter4.find_maxima([[8, 7], 14, [4, 5]]) == 14
  end

  test "test binary search" do
  	assert Chapter4.binary_search([1, 2, 3], 2) == 2
  end

    test "test binary search 2" do
  	assert Chapter4.binary_search(1..5, 2) == 2
  end

  test "test binary search 3" do
  	assert Chapter4.binary_search(1..5000, 2) == 2
  end

end
