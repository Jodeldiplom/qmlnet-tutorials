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
          engine.Load("Tutorial01.qml");
          application.Exec();
        }
      }
    }
  }
}