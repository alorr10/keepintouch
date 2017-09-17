User.create(name: "Alec Lorraine", phone: "+12154295512", email: "aleclorraine10@gmail.com", password: 'secret')

Contact.create(name: "Janet Lorraine", phone: "+1254293488", contact_method: 'phone', user_id: 1, last_contacted_on: "2017-09-14")
Contact.create(name: "Alli Lorraine", phone: "+12674381218", contact_method: 'facetime', user_id: 1, last_contacted_on: "2017-09-15")
Contact.create(name: "Andrew Lorraine", contact_method: 'fbmessenger', handle: "andrew.lorraine.5", user_id: 1, last_contacted_on: "2017-09-01")
Contact.create(name: "Richard Lorraine", phone: "+12154705811", contact_method: 'phone', user_id: 1, last_contacted_on: "2017-08-14")