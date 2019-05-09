QT += quick
CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += RAPIDJSON_HAS_STDSTRING=1

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Backend.cpp \
        main.cpp \
        wallet-backend/src/Common/Base58.cpp \
        wallet-backend/src/Common/ConsoleTools.cpp \
        wallet-backend/src/Common/CryptoNoteTools.cpp \
        wallet-backend/src/Common/IInputStream.cpp \
        wallet-backend/src/Common/IOutputStream.cpp \
        wallet-backend/src/Common/JsonValue.cpp \
        wallet-backend/src/Common/MemoryInputStream.cpp \
        wallet-backend/src/Common/SignalHandler.cpp \
        wallet-backend/src/Common/StdInputStream.cpp \
        wallet-backend/src/Common/StdOutputStream.cpp \
        wallet-backend/src/Common/StreamTools.cpp \
        wallet-backend/src/Common/StringInputStream.cpp \
        wallet-backend/src/Common/StringOutputStream.cpp \
        wallet-backend/src/Common/StringTools.cpp \
        wallet-backend/src/Common/StringView.cpp \
        wallet-backend/src/Common/TransactionExtra.cpp \
        wallet-backend/src/Common/VectorOutputStream.cpp \
        wallet-backend/src/Errors/Errors.cpp \
        wallet-backend/src/Errors/ValidateParameters.cpp \
        wallet-backend/src/Logger/Logger.cpp \
        wallet-backend/src/Mnemonics/Mnemonics.cpp \
        wallet-backend/src/Nigel/Nigel.cpp \
        wallet-backend/src/Serialization/BinaryInputStreamSerializer.cpp \
        wallet-backend/src/Serialization/BinaryOutputStreamSerializer.cpp \
        wallet-backend/src/Serialization/BlockchainExplorerDataSerialization.cpp \
        wallet-backend/src/Serialization/CryptoNoteSerialization.cpp \
        wallet-backend/src/Serialization/JsonInputStreamSerializer.cpp \
        wallet-backend/src/Serialization/JsonInputValueSerializer.cpp \
        wallet-backend/src/Serialization/JsonOutputStreamSerializer.cpp \
        wallet-backend/src/Serialization/KVBinaryInputStreamSerializer.cpp \
        wallet-backend/src/Serialization/KVBinaryOutputStreamSerializer.cpp \
        wallet-backend/src/Serialization/MemoryStream.cpp \
        wallet-backend/src/Serialization/SerializationOverloads.cpp \
        wallet-backend/src/SubWallets/SubWallet.cpp \
        wallet-backend/src/SubWallets/SubWallets.cpp \
        wallet-backend/src/Utilities/Addresses.cpp \
        wallet-backend/src/Utilities/FormatTools.cpp \
        wallet-backend/src/Utilities/Input.cpp \
        wallet-backend/src/Utilities/Mixins.cpp \
        wallet-backend/src/Utilities/String.cpp \
        wallet-backend/src/Utilities/Utilities.cpp \
        wallet-backend/src/WalletBackend/JsonSerialization.cpp \
        wallet-backend/src/WalletBackend/SynchronizationStatus.cpp \
        wallet-backend/src/WalletBackend/Transfer.cpp \
        wallet-backend/src/WalletBackend/WalletBackend.cpp \
        wallet-backend/src/WalletBackend/WalletSynchronizer.cpp \
        wallet-backend/src/crypto/aesb.c \
        wallet-backend/src/crypto/blake256.c \
        wallet-backend/src/crypto/crypto-ops-data.c \
        wallet-backend/src/crypto/crypto-ops.c \
        wallet-backend/src/crypto/crypto.cpp \
        wallet-backend/src/crypto/groestl.c \
        wallet-backend/src/crypto/hash-extra-blake.c \
        wallet-backend/src/crypto/hash-extra-groestl.c \
        wallet-backend/src/crypto/hash-extra-jh.c \
        wallet-backend/src/crypto/hash-extra-skein.c \
        wallet-backend/src/crypto/hash.c \
        wallet-backend/src/crypto/jh.c \
        wallet-backend/src/crypto/keccak.c \
        wallet-backend/src/crypto/oaes_lib.c \
        wallet-backend/src/crypto/skein.c \
        wallet-backend/src/crypto/slow-hash.c \
        wallet-backend/src/crypto/tree-hash.c \

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += $$PWD/wallet-backend/include \
               $$PWD/wallet-backend/src \
               $$PWD/wallet-backend/external \
               $$PWD/wallet-backend/external/nlohmann-json \
               $$PWD/wallet-backend/external/cpp-httplib \

HEADERS += \
    Backend.h \
    wallet-backend/external/cpp-httplib/httplib.h \
    wallet-backend/external/cpp-linenoise/linenoise.hpp \
    wallet-backend/external/nlohmann-json/json.hpp \
    wallet-backend/external/rapidjson/allocators.h \
    wallet-backend/external/rapidjson/cursorstreamwrapper.h \
    wallet-backend/external/rapidjson/document.h \
    wallet-backend/external/rapidjson/encodedstream.h \
    wallet-backend/external/rapidjson/encodings.h \
    wallet-backend/external/rapidjson/error/en.h \
    wallet-backend/external/rapidjson/error/error.h \
    wallet-backend/external/rapidjson/filereadstream.h \
    wallet-backend/external/rapidjson/filewritestream.h \
    wallet-backend/external/rapidjson/fwd.h \
    wallet-backend/external/rapidjson/internal/biginteger.h \
    wallet-backend/external/rapidjson/internal/diyfp.h \
    wallet-backend/external/rapidjson/internal/dtoa.h \
    wallet-backend/external/rapidjson/internal/ieee754.h \
    wallet-backend/external/rapidjson/internal/itoa.h \
    wallet-backend/external/rapidjson/internal/meta.h \
    wallet-backend/external/rapidjson/internal/pow10.h \
    wallet-backend/external/rapidjson/internal/regex.h \
    wallet-backend/external/rapidjson/internal/stack.h \
    wallet-backend/external/rapidjson/internal/strfunc.h \
    wallet-backend/external/rapidjson/internal/strtod.h \
    wallet-backend/external/rapidjson/internal/swap.h \
    wallet-backend/external/rapidjson/istreamwrapper.h \
    wallet-backend/external/rapidjson/memorybuffer.h \
    wallet-backend/external/rapidjson/memorystream.h \
    wallet-backend/external/rapidjson/msinttypes/inttypes.h \
    wallet-backend/external/rapidjson/msinttypes/stdint.h \
    wallet-backend/external/rapidjson/ostreamwrapper.h \
    wallet-backend/external/rapidjson/pointer.h \
    wallet-backend/external/rapidjson/prettywriter.h \
    wallet-backend/external/rapidjson/rapidjson.h \
    wallet-backend/external/rapidjson/reader.h \
    wallet-backend/external/rapidjson/schema.h \
    wallet-backend/external/rapidjson/stream.h \
    wallet-backend/external/rapidjson/stringbuffer.h \
    wallet-backend/external/rapidjson/writer.h \
    wallet-backend/include/BlockchainExplorerData.h \
    wallet-backend/include/CryptoNote.h \
    wallet-backend/include/CryptoTypes.h \
    wallet-backend/include/IBlockchainExplorer.h \
    wallet-backend/include/IDataBase.h \
    wallet-backend/include/INode.h \
    wallet-backend/include/IObservable.h \
    wallet-backend/include/IReadBatch.h \
    wallet-backend/include/IStreamSerializable.h \
    wallet-backend/include/ITransaction.h \
    wallet-backend/include/ITransfersContainer.h \
    wallet-backend/include/ITransfersSynchronizer.h \
    wallet-backend/include/IWallet.h \
    wallet-backend/include/IWriteBatch.h \
    wallet-backend/include/JsonHelper.h \
    wallet-backend/include/WalletTypes.h \
    wallet-backend/src/Common/Base58.h \
    wallet-backend/src/Common/ConsoleTools.h \
    wallet-backend/src/Common/CryptoNoteTools.h \
    wallet-backend/src/Common/IInputStream.h \
    wallet-backend/src/Common/IOutputStream.h \
    wallet-backend/src/Common/JsonValue.h \
    wallet-backend/src/Common/MemoryInputStream.h \
    wallet-backend/src/Common/SignalHandler.h \
    wallet-backend/src/Common/StdInputStream.h \
    wallet-backend/src/Common/StdOutputStream.h \
    wallet-backend/src/Common/StreamTools.h \
    wallet-backend/src/Common/StringBuffer.h \
    wallet-backend/src/Common/StringInputStream.h \
    wallet-backend/src/Common/StringOutputStream.h \
    wallet-backend/src/Common/StringTools.h \
    wallet-backend/src/Common/StringView.h \
    wallet-backend/src/Common/TransactionExtra.h \
    wallet-backend/src/Common/Varint.h \
    wallet-backend/src/Common/VectorOutputStream.h \
    wallet-backend/src/Common/int-util.h \
    wallet-backend/src/Errors/Errors.h \
    wallet-backend/src/Errors/ValidateParameters.h \
    wallet-backend/src/Logger/Logger.h \
    wallet-backend/src/Mnemonics/CRC32.h \
    wallet-backend/src/Mnemonics/Mnemonics.h \
    wallet-backend/src/Mnemonics/WordList.h \
    wallet-backend/src/Nigel/Nigel.h \
    wallet-backend/src/Serialization/BinaryInputStreamSerializer.h \
    wallet-backend/src/Serialization/BinaryOutputStreamSerializer.h \
    wallet-backend/src/Serialization/BinarySerializationTools.h \
    wallet-backend/src/Serialization/BlockchainExplorerDataSerialization.h \
    wallet-backend/src/Serialization/CryptoNoteSerialization.h \
    wallet-backend/src/Serialization/ISerializer.h \
    wallet-backend/src/Serialization/IStream.h \
    wallet-backend/src/Serialization/JsonInputStreamSerializer.h \
    wallet-backend/src/Serialization/JsonInputValueSerializer.h \
    wallet-backend/src/Serialization/JsonOutputStreamSerializer.h \
    wallet-backend/src/Serialization/KVBinaryCommon.h \
    wallet-backend/src/Serialization/KVBinaryInputStreamSerializer.h \
    wallet-backend/src/Serialization/KVBinaryOutputStreamSerializer.h \
    wallet-backend/src/Serialization/MemoryStream.h \
    wallet-backend/src/Serialization/SerializationOverloads.h \
    wallet-backend/src/Serialization/SerializationTools.h \
    wallet-backend/src/SubWallets/SubWallet.h \
    wallet-backend/src/SubWallets/SubWallets.h \
    wallet-backend/src/Utilities/Addresses.h \
    wallet-backend/src/Utilities/ColouredMsg.h \
    wallet-backend/src/Utilities/Container.h \
    wallet-backend/src/Utilities/FormatTools.h \
    wallet-backend/src/Utilities/Input.h \
    wallet-backend/src/Utilities/LicenseCanary.h \
    wallet-backend/src/Utilities/Mixins.h \
    wallet-backend/src/Utilities/String.h \
    wallet-backend/src/Utilities/Utilities.h \
    wallet-backend/src/WalletBackend/Constants.h \
    wallet-backend/src/WalletBackend/EventHandler.h \
    wallet-backend/src/WalletBackend/JsonSerialization.h \
    wallet-backend/src/WalletBackend/SynchronizationStatus.h \
    wallet-backend/src/WalletBackend/ThreadSafeQueue.h \
    wallet-backend/src/WalletBackend/Transfer.h \
    wallet-backend/src/WalletBackend/WalletBackend.h \
    wallet-backend/src/WalletBackend/WalletSynchronizer.h \
    wallet-backend/src/WalletBackend/WalletSynchronizerRAIIWrapper.h \
    wallet-backend/src/config/Ascii.h \
    wallet-backend/src/config/CliHeader.h \
    wallet-backend/src/config/Constants.h \
    wallet-backend/src/config/CryptoNoteCheckpoints.h \
    wallet-backend/src/config/CryptoNoteConfig.h \
    wallet-backend/src/config/WalletConfig.h \
    wallet-backend/src/crypto/blake256.h \
    wallet-backend/src/crypto/crypto-ops.h \
    wallet-backend/src/crypto/crypto.h \
    wallet-backend/src/crypto/groestl.h \
    wallet-backend/src/crypto/groestl_tables.h \
    wallet-backend/src/crypto/hash-ops.h \
    wallet-backend/src/crypto/hash.h \
    wallet-backend/src/crypto/initializer.h \
    wallet-backend/src/crypto/jh.h \
    wallet-backend/src/crypto/keccak.h \
    wallet-backend/src/crypto/oaes_config.h \
    wallet-backend/src/crypto/oaes_lib.h \
    wallet-backend/src/crypto/random.h \
    wallet-backend/src/crypto/skein.h \
    wallet-backend/src/crypto/skein_port.h \
    wallet-backend/src/crypto/variant2_int_sqrt.h \
