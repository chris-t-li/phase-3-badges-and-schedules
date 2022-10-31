def badge_maker(name="Arel")
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map {|person| badge_maker(person)}
end 

def assign_rooms(list_of_speakers)
    list_of_speakers.map.with_index do |speaker, index|
        "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
    end
end

def printer(list_of_speakers)
    batch_badge_creator(list_of_speakers).each {|badge| puts badge}
    assign_rooms(list_of_speakers).each {|room_assignment| puts room_assignment}
end
