def reading_time(str)
    num_words = str.split(" ").length
    read_time = (num_words * 0.3).to_i
    return "#{read_time} seconds"
end