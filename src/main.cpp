#include <iostream>
#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char* argv[])
{
    std::cout<<"Music Player v0.1"<<"\n";
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.loadFromModule("Lyra", "Main");

    return app.exec();

    return 0;


}

