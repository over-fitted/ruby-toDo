$tasks = []
is_done = false
past_actions = []

def delete
  if $tasks.empty?
    puts "no tasks to delete"
  else
    puts "which task would you like to delete?"
    $tasks.each{|task, index| puts "#{index + 1}: #{task}"}
    target = gets.chomp.to_i
    if target.between(1,$tasks.length)
      tasks.delete_at(target - 1)
    else
      puts "please try again"
      delete()
    end
  end
end


until is_done
  puts "todo:"
  if $tasks.empty?
    puts "no tasks to do"
  else 
    $tasks.each{|task, index| puts "#{index + 1}: #{task}"}
  end
  puts "What would you like to do?\n1) delete task\n2) add task\n3) undo\n4) quit"
  option = gets.chomp
  if option == "1"
    delete
  elsif option == "4"
    is_done = true
  end
end

