def insertsort(array)
  table = [array[0]]
  array.delete_at(0)
  for i in array
    table_index = 0
    while table_index < table.length
      if i <= table[table_index]
        table.insert(table_index, i)
        break
      elsif table_index == table.length - 1
        table.insert(table_index + 1, i)
        break
      end
      table_index += 1
    end
  end
  table
end

#array = [23,12,32,1,3,5,32,22]
#puts insertsort(array)