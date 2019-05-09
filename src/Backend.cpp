#include "Backend.h"

BackEnd::BackEnd(QObject *parent) :
    QObject(parent)
{
    const auto [error, wallet] = WalletBackend::importWalletFromSeed(
        "olive cage nitrogen orchid vampire antics together lurk doing eggs lordship hazard sighting tepid icon bamboo abbey wipeout brunt onboard bulb tender zigzags adapt tender",
        "test.wallet",
        "dave",
        1400000,
        "blockapi.turtlepay.io",
        443,
        true
    );

    if (error != SUCCESS)
    {
        setUserName(QString::fromStdString("Error: " + error.getErrorMessage()));
    }
    else
    {
        setUserName(QString::fromStdString(wallet->getPrimaryAddress()));
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
