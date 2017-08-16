def convert_to_roman(arabic_number, options = {})
  # Your code goes here
  test_num = arabic_number
  if test_num%1000 != test_num
    thousands = test_num/1000
    ms = "M" *thousands
    test_num = test_num - (thousands * 1000)
  end

  if test_num%500 != test_num
    five_hundreds = test_num/500
    ds = "D" *five_hundreds
    if ds == "DDDD"
      ds = "DM"
    end
    test_num = test_num - (five_hundreds * 500)
  end

  if test_num%100 != test_num
    hundreds = test_num/100
    cs = "C" *hundreds
    if cs == "CCCC"
      cs = "CD"
    end
    test_num = test_num - (hundreds * 100)
  end

  if test_num%50 != test_num
    fifties = test_num/50
    ls = "L" *fifties
    if ls == "LLLL"
      ls = "LC"
    end
    test_num = test_num - (fifties * 50)
  end

  if test_num%10 != test_num
    tens = test_num/10
    xs = "X" *tens
    if xs == "XXXX"
      xs = "XL"
    end
    test_num = test_num - (tens * 10)
  end

  if test_num%5 != test_num
    fives = test_num/5
    vs = "V" *fives
    if vs == "VVVV"
      vs = "VX"
    end
    test_num = test_num - (fives * 5)
  end

  if test_num%1 != test_num
    ones = test_num/1
    is = "I" * ones
    if is == "IIII"
      is = "IV"
    end
  end

p (ms.to_s + ds.to_s + cs.to_s+ ls.to_s + xs.to_s + vs.to_s + is.to_s)

end

convert_to_roman(3679)