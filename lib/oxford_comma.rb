def oxford_comma(array)
  string=""
  array.each_with_index do |item,index|
    if array[0]==array[-1]
      string="#{item}"
    elsif array.length==2
      string=array.join(", ")
      return string
    elsif array[index]==array[-1]
      string+=", and #{item}"
    elsif index==0
      string+="#{item}"
    else
      string+=", #{item}"
    end
  end
  return string
end
