using System;

using Qml.Net;

namespace QmlNetTutorials
{
  class Program
  {
    static void Main(string[] args)
    {
      using (var application = new QGuiApplication(args))
      {
        using (var engine = new QQmlApplicationEngine())
        {
          var listOfContacts = CreateDemoContactList();

          Qml.Net.Qml.RegisterType<ContactList>("QmlNet.Tutorials.ContactList", 1, 0);

          engine.SetContextProperty("contacts", listOfContacts);

          engine.Load("Tutorial02.qml");

                    engine.SetContextProperty("contacts", listOfContacts);

          application.Exec();
        }
      }
    }

    static ContactList CreateDemoContactList()
    {
      var result = new ContactList();

      result.AddContact(new Contact()
      {
        Surname = "Koch",
        Forname = "Martin",
        EmailAddress = "test@test.com",

        Address = new Address() 
        {
          City = "Bohemian",
        }
      });

      result.AddContact(new Contact()
      {
        Surname = "Zabel",
        Forname = "Peter"
      });      

            result.AddContact(new Contact()
      {
        Surname = "Wipfel",
        Forname = "Heinz"
      });      

      return result;
    }
  }
}