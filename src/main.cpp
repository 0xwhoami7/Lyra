#include <iostream>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QMediaPlayer>
#include <QAudioOutput>
#include <QQmlContext>


int main(int argc, char* argv[])
{
    std::cout<<"Music Player v0.1"<<"\n";
    QGuiApplication app(argc, argv);
    QMediaPlayer player;
    QAudioOutput audioOutput;

    player.setAudioOutput(&audioOutput);

    player.setSource(
        QUrl::fromLocalFile("/home/whoami/Lyra/music/test.mp3")
    );
    QQmlApplicationEngine engine;
    engine.loadFromModule("Lyra", "Main");
    
    engine.rootContext()->setContextProperty("player", &player);
    return app.exec();

    return 0;


}

