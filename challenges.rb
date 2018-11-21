# **********COMPARE THE TRIPLETS************** #
  # - Complete the function compareTriplets in the editor below. It must return an array of two integers, the first being Alice's score and the second being Bob's.
  # - compareTriplets has the following parameter(s):
    # - a: an array of integers representing Alice's challenge rating
    # - b: an array of integers representing Bob's challenge rating
  # - if a[i] > b[i] then Alice gets one point
  # - if a[i] < b[i] then Bob gets one point
  # - if a[i] === b[i] then noone gets a point

  def compareTriplets(a, b)
    array = Array.new

    alice = 0
    bob = 0

    a.each_with_index do |elem, index|
        if elem > b[index]
            alice += 1
        elsif elem < b[index]
            bob += 1
        end
    end

    array.push(alice, bob)
    return array
  end
# *********************************************************** #

# **************SIMPLE ARRAY SUM******************* #
  # Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.
  # simpleArraySum has the following parameter(s):
    # ar: an array of integers

  def simpleArraySum(ar)
    count = 0
    ar.map {|elem| count += elem}
    return count
  end
# *********************************************************** #

# ****************A VERY BIG SUM****************** #
  # Complete the aVeryBigSum function in the editor below. It must return the sum of all array elements.
  # aVeryBigSum has the following parameter(s):
  # ar: an array of integers

  def aVeryBigSum(ar)
    sum = 0
    ar.each do |e|
      sum += e
    end
    return sum
  end
# *********************************************************** #

# ****************SOCK MERCHANT******************* #
  # Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
  # sockMerchant has the following parameter(s):
    # n: the number of socks in the pile
    # ar: the colors of each sock

  def sockMerchant(n, ar)
    count = 0

    obj = ar.each_with_object(Hash.new(0)) { |e, counts| counts[e] += 1 }

    obj.each do |key, value|
        if value > 1 and value % 2 === 0
            count += value / 2
        elsif value > 1
            value -= 1
            count += value / 2
        end
    end
    return count
  end
# *********************************************************** #
