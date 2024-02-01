todo_lists[1][:todos][0][:completed] = true
todo_lists[1][:todos][1][:completed] = true

todo_lists.each do |list|
  if list[:list_name] == 'Homework'
    list[:todos].each do |todo|
      todo[:completed] = true
    end
  end
end

todo_lists[1][:todos].each do |todo|
  todo[:completed] = true
end