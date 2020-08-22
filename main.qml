import QtQuick 2.6
import QtQuick.Window 2.2
import com.blackgrain.qml.quickdownload 1.0
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2
import FileIO 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Download {
        id: downloader

        url: "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=dinu"
        destination: "file:/home/dinu/test.png"

        running: false
        overwrite: true
        followRedirects: true
        onRedirected: console.log('Redirected',url,'->',redirectUrl)

        onStarted: console.log('Started download',url)
        onError: console.error(errorString)
        onProgressChanged: console.log(url,'progress:',progress)
        onFinished: console.info(url,'done')

    }


    FileIO {
        id: myFile
        //          source: "my_file.txt"
        onError: console.log(msg)
    }

    Button {
        onClicked: fDialog.open()

    }

    Text {
        id: displayTest
        text: qsTr("text")
    }

    FileDialog {
        id: fDialog
        onAccepted: {
//            displayTest.text = this.fileUrl
            myFile.source = this.fileUrl
            console.log( "WRITE"+ myFile.write("TEST"));
                    displayTest.text =  myFile.read();
        }
    }





}
