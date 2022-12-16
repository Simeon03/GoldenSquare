def snip(string)
    words = string.split(" ")
    if words.length <= 5
        return string
    else
        return words[0..4].join(" ") + "..."
    end
end