import Qt.test 1.0
import Qt 4.7
import "scriptDisconnect.1.js" as Script

MyQmlObject { 
    property int test: 0

    id: root
    
    Component.onCompleted: root.argumentSignal.connect(root, Script.testFunction);

    onBasicSignal: root.argumentSignal.disconnect(Script.testFunction);
}
