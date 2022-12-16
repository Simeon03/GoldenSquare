def sentence_corrector(str)
    uppercase = str[0] == str[0].upcase
    fullstop = str[-1] == "."


    if uppercase && fullstop
        return true
    elsif uppercase
        return str + "."
    elsif !uppercase && fullstop
        return str.capitalize
    else
        return str.capitalize + "."
    end
end