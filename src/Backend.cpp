#include "Backend.h"
#include <Logger/Logger.h>
#include <QtDebug>

BackEnd::BackEnd(QObject *parent) :
    QObject(parent)
{
    const auto [error, wallet] = WalletBackend::importWalletFromSeed(
        "olive cage nitrogen orchid vampire antics together lurk doing eggs lordship hazard sighting tepid icon bamboo abbey wipeout brunt onboard bulb tender zigzags adapt tender",
        "test.wallet",
        "dave",
        0,
        "node.trtlpay.com",
        80,
        true
    );

    m_walletBackend = wallet;
    m_syncThread = std::thread(&BackEnd::sync, this);

    Logger::logger.setLogLevel(Logger::LogLevel::DEBUG);
    Logger::logger.setLogCallback([](const auto prettyMessage, const auto, const auto, const auto){
        qDebug() << QString::fromStdString(prettyMessage);
    });
}

BackEnd::~BackEnd()
{
    m_shouldStop = true;

    if (m_syncThread.joinable())
    {
        m_syncThread.join();
    }
}

void BackEnd::sync()
{
    while (!m_shouldStop)
    {
        auto [walletBlockCount, localDaemonBlockCount, networkBlockCount] = m_walletBackend->getSyncStatus();
        std::stringstream status;

        status << "Wallet height: " << walletBlockCount << ", daemon height: " << localDaemonBlockCount << ", network height: " << networkBlockCount << std::endl;
        setUserName(QString::fromStdString(status.str()));

        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}

QString BackEnd::userName()
{
    return m_userName;
}

void BackEnd::setUserName(const QString &userName)
{
    if (userName == m_userName)
        return;

    m_userName = userName;
    emit userNameChanged();
}
