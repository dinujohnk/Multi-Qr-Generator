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


    Column{

        anchors.centerIn: parent
        width: parent.width
        Text {

            text: qsTr("Start MAc ID:")
        }

        Row {
            width: parent.width




            TextField{
                id:onePos
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
    //            id:
                text: qsTr(":")
            }
            TextField{
                id:twoPos
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
    //            id:
                text: qsTr(":")
            }
            TextField{
                id:threePos
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:fourPos
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:fivePos
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:sixPos
                width: parent.width/7
                placeholderText: '00'

            }

        }

        Rectangle {
            color: "transparent"
            height: 50
            width: parent.width
        }

        Text {


            text: qsTr("End Mac Id:")
        }
        Row {
            width: parent.width




            TextField{
                id:oneEnd
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
    //            id:
                text: qsTr(":")
            }
            TextField{
                id:twoEnd
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
    //            id:
                text: qsTr(":")
            }
            TextField{
                id:threeEnd
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:fourEnd
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:fiveEnd
                width: parent.width/7
                placeholderText: '00'

            }
            Text {
                //            id:
                text: qsTr(":")
            }
            TextField{
                id:sixEnd
                width: parent.width/7
                placeholderText: '00'

            }

        }

        Rectangle {
            color: "transparent"
            height: 50
            width: parent.width
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Start Generation"
        }

    }



//Component.onCompleted: testing()

    function testing(){
        var yourNumber = 4
        var hexString = yourNumber.toString(16);

        console.log(hexString)

        for(var i= 0; i<=255; i++){
            for(var j=0;j<=255; j++){
                for(var k =0;k<=255;k++){
                    for(var l=0;l<=255;l++){
                        for(var m=0;m<=255;m++){
                            for(var n=0;n<=255;n++){
                                console.log(i.toString(16)+":"+j.toString(16)+":"+":"+k.toString(16)+":"+l.toString(16)+":"+m.toString(16)+":"+n.toString(16))
                            }
                        }
                    }

                }
            }

        }

    }










//    FileIO {
//        id: myFile
//        //          source: "my_file.txt"
//        onError: console.log(msg)
//    }

//    Button {
//        onClicked: fDialog.open()

//    }

//    Text {
//        id: displayTest
//        text: qsTr("text")
//    }

//    FileDialog {
//        id: fDialog
//        onAccepted: {
////            displayTest.text = this.fileUrl
//            myFile.source = this.fileUrl
//            console.log( "WRITE"+ myFile.write("TEST"));
//                    displayTest.text =  myFile.read();
//        }
//    }





}
