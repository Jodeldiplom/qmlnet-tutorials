---
title: Introduction
order: 0
---
# Basic example - Hello world

Like every good example  ssss, we will stick to the classic "Hello world" scenario.

**```Main.qml```**
The actual layout of the dialog gets defined in a QML.

```qml
import QtQuick 2.7
import QtQuick.Controls 2.0
import test 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    NetObject {
      id: test
      Component.onCompleted: function() {
          test.method()
      }
    }
}
```

## Hello

**```Program.cs```**
```csharp
class Program
{
    public class NetObject
    {
        public void Method()
        {
            // Called from QML.
        }
    }

    static int Main(string[] args)
    {
        using (var app = new QGuiApplication(args))
        {
            using (var engine = new QQmlApplicationEngine())
            {
                Qml.RegisterType<NetObject>("test");

                engine.Load("Main.qml");
                
                return app.Exec();
            }
        }
    }
}
```

Let us analyze the finer details.

```csharp
// Create an instance of our model and 
var model = new MyModel ();
model.TextToDisplay = "Empty";
```


See [Features](/features) for a complete list of interactions that can be done between .NET and QML.