str = ""
switch = 0


def caesar_cipher?(str, switch)
  arr_str = str.split("").map {|x| x.ord}
  treshold = 0

  def set_threshold(x)
    if (65...90) === x
      return "Z".ord
    elsif (97...122) === x
      return "z".ord
    else 
      return 0
    end
  end

  def str_join?(arr_str, switch, set_threshold)    
    return arr_str.map {|x| 
      set_threshold(x) != 0 ?    
      (x + switch > set_threshold(x)) ? (((x + switch) - set_threshold(x)) + x).chr : (x + switch).chr :
      x.chr 
      }
  end

  return final_str = str_join?(arr_str, switch, treshold).join("")
end
