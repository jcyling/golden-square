class DiaryEntry
  def initialize(title, content)
    @title = title
    @content = content
    fail "Not enough information" if @content.empty? 
  end

  def see_contacts
    # return list of contacts
  end

  def add_contact(contact) # an instance of contact
    # adds contact to the list
  end

end