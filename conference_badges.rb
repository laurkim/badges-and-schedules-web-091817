# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  message_array = []
  attendees.each do |name|
    message = badge_maker(name)
    message_array.push(message)
  end
  message_array
end

def assign_rooms(attendees)
  assignments = []
  attendees.each_with_index do |name, index|
    phrase = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    assignments.push(phrase)
  end
  assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end
