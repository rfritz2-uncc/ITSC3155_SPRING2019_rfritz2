# RubyHashes
# Part I
def array_2_hash emails, contacts
    person = Hash.new
    i=0
    if emails[i] == nil
        return contacts
    else
        contacts.each do |key, value|
        temp = "#{key}"
        person[temp] = emails[i]
        i+=1
        end
    end
    return person
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
