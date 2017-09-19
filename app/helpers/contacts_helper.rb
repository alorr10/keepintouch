module ContactsHelper

  def should_contact(contact)
    if contact.last_contacted_on < contact.time_between_contact.days.ago
      "<span class='should-contact contact#{contact.id}'>#{time_ago_in_words(contact.last_contacted_on)} ago </span>".html_safe
    else
      "<span class='shouldnt-contact contact#{contact.id}'>#{time_ago_in_words(contact.last_contacted_on)} ago</span>".html_safe
    end
  end

    def contact(c)
      case c.contact_method
      when "Phone"
        link = "tel::#{c.phone}"
      when "Facetime"
        link = "facetime:#{c.phone}"
      when "FB Messenger"
        link = "https://www.facebook.com/#{c.handle}"
      when "What's App"
        link = "https://www.whatsapp.com/"
      when "text"
        link = "sms:#{c.phone}"
      when "Email"
        link = "mailto:#{c.handle}"
      when "Other"
        link = "https://www.whatsapp.com/"
      end
      return link
    end
  end
