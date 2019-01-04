using System;
using System.Collections.Generic;
using System.Linq;

namespace QmlNetTutorials
{
  public class Contact
  {
    public string Surname { get; set; }
    public string Forname { get; set; }

    public Address Address { get; set; }

    public string MobileNumber { get; set; }
    public string EmailAddress { get; set; }

    public Contact()
    {
      this.Address = new Address();
    }

    public bool HasMobilePhoneNumber()
    {
      return (string.IsNullOrEmpty(this.MobileNumber) == false);
    }

    public bool HasEmailAddress()
    {
      return (string.IsNullOrEmpty(this.EmailAddress) == false);
    }
  }

  public class ContactList : List<Contact>
  {
      private List<Contact> fContacts = new List<Contact>();

      public void AddContact(Contact contact)
      {
        this.fContacts.Add(contact);
      }  

      public List<Contact> GetAllContacts()
      {
        return fContacts.OrderBy(c => c.Surname).ToList();
      }      
  }
}