# RubyHashes
# Part I
def array_2_hash emails, contacts
    person = Hash.new
    i=0
    if emails.empty?
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
    person = Hash.new
    i=0
    j=0
    if contact_info[i][j] == nil
        return contacts
    end
        contacts.each do |key, value|
        temp =:"#{key}"
        person[temp] = {:email => contact_info[i][0], :phone => contact_info[i][1]}
        i+=1
        j+=1
        
    end
    return person
end

# Part III
def hash_2_array contacts
    person = Array.new
    email = Array.new
    phone = Array.new
    name = Array.new
    
    contacts.each do |key, value|
        temp =:"#{key}"
        email.push contacts[temp][:email]
        phone.push contacts[temp][:phone]
        name.push "#{key}"
    end
    person.push email
    person.push phone
    person.push name
    return person.to_a
end
