module ApplicationHelper

  def display_name(name)
    tmp = name.split(" ")
    display = "#{tmp[0]} #{tmp[1][0]}" 
  end
end
