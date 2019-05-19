QT += quick
CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += RAPIDJSON_HAS_STDSTRING=1

QMAKE_CXXFLAGS_WARN_ON += -Wno-reorder

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Backend.cpp \
        main.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/Base58.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/ConsoleTools.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/CryptoNoteTools.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/IInputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/IOutputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/JsonValue.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/MemoryInputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/SignalHandler.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StdInputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StdOutputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StreamTools.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StringInputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StringOutputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StringTools.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/StringView.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/TransactionExtra.cpp \
        turtlecoin-wallet-backend-cpp/src/Common/VectorOutputStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Errors/Errors.cpp \
        turtlecoin-wallet-backend-cpp/src/Errors/ValidateParameters.cpp \
        turtlecoin-wallet-backend-cpp/src/Logger/Logger.cpp \
        turtlecoin-wallet-backend-cpp/src/Mnemonics/Mnemonics.cpp \
        turtlecoin-wallet-backend-cpp/src/Nigel/Nigel.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/BinaryInputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/BinaryOutputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/CryptoNoteSerialization.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/JsonInputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/JsonInputValueSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/JsonOutputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/KVBinaryInputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/KVBinaryOutputStreamSerializer.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/MemoryStream.cpp \
        turtlecoin-wallet-backend-cpp/src/Serialization/SerializationOverloads.cpp \
        turtlecoin-wallet-backend-cpp/src/SubWallets/SubWallet.cpp \
        turtlecoin-wallet-backend-cpp/src/SubWallets/SubWallets.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/Addresses.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/FormatTools.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/Input.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/Mixins.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/String.cpp \
        turtlecoin-wallet-backend-cpp/src/Utilities/Utilities.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/BlockDownloader.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/JsonSerialization.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/SynchronizationStatus.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/Transfer.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/WalletBackend.cpp \
        turtlecoin-wallet-backend-cpp/src/WalletBackend/WalletSynchronizer.cpp \
        turtlecoin-wallet-backend-cpp/src/crypto/aesb.c \
        turtlecoin-wallet-backend-cpp/src/crypto/blake256.c \
        turtlecoin-wallet-backend-cpp/src/crypto/crypto-ops-data.c \
        turtlecoin-wallet-backend-cpp/src/crypto/crypto-ops.c \
        turtlecoin-wallet-backend-cpp/src/crypto/crypto.cpp \
        turtlecoin-wallet-backend-cpp/src/crypto/groestl.c \
        turtlecoin-wallet-backend-cpp/src/crypto/hash-extra-blake.c \
        turtlecoin-wallet-backend-cpp/src/crypto/hash-extra-groestl.c \
        turtlecoin-wallet-backend-cpp/src/crypto/hash-extra-jh.c \
        turtlecoin-wallet-backend-cpp/src/crypto/hash-extra-skein.c \
        turtlecoin-wallet-backend-cpp/src/crypto/hash.c \
        turtlecoin-wallet-backend-cpp/src/crypto/jh.c \
        turtlecoin-wallet-backend-cpp/src/crypto/keccak.c \
        turtlecoin-wallet-backend-cpp/src/crypto/oaes_lib.c \
        turtlecoin-wallet-backend-cpp/src/crypto/skein.c \
        turtlecoin-wallet-backend-cpp/src/crypto/tree-hash.c \

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += $$PWD/turtlecoin-wallet-backend-cpp/include \
               $$PWD/turtlecoin-wallet-backend-cpp/src \
               $$PWD/turtlecoin-wallet-backend-cpp/external \
               $$PWD/turtlecoin-wallet-backend-cpp/external/nlohmann-json \
               $$PWD/turtlecoin-wallet-backend-cpp/external/cpp-httplib \

HEADERS += \
    Backend.h \
    turtlecoin-wallet-backend-cpp/external/cpp-httplib/httplib.h \
    turtlecoin-wallet-backend-cpp/external/cpp-linenoise/linenoise.hpp \
    turtlecoin-wallet-backend-cpp/external/nlohmann-json/json.hpp \
    turtlecoin-wallet-backend-cpp/external/rapidjson/allocators.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/cursorstreamwrapper.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/document.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/encodedstream.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/encodings.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/error/en.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/error/error.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/filereadstream.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/filewritestream.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/fwd.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/biginteger.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/diyfp.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/dtoa.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/ieee754.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/itoa.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/meta.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/pow10.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/regex.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/stack.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/strfunc.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/strtod.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/internal/swap.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/istreamwrapper.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/memorybuffer.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/memorystream.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/msinttypes/inttypes.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/msinttypes/stdint.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/ostreamwrapper.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/pointer.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/prettywriter.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/rapidjson.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/reader.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/schema.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/stream.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/stringbuffer.h \
    turtlecoin-wallet-backend-cpp/external/rapidjson/writer.h \
    turtlecoin-wallet-backend-cpp/include/CryptoNote.h \
    turtlecoin-wallet-backend-cpp/include/CryptoTypes.h \
    turtlecoin-wallet-backend-cpp/include/JsonHelper.h \
    turtlecoin-wallet-backend-cpp/include/WalletTypes.h \
    turtlecoin-wallet-backend-cpp/src/Common/Base58.h \
    turtlecoin-wallet-backend-cpp/src/Common/ConsoleTools.h \
    turtlecoin-wallet-backend-cpp/src/Common/CryptoNoteTools.h \
    turtlecoin-wallet-backend-cpp/src/Common/IInputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/IOutputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/JsonValue.h \
    turtlecoin-wallet-backend-cpp/src/Common/MemoryInputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/SignalHandler.h \
    turtlecoin-wallet-backend-cpp/src/Common/StdInputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/StdOutputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/StreamTools.h \
    turtlecoin-wallet-backend-cpp/src/Common/StringBuffer.h \
    turtlecoin-wallet-backend-cpp/src/Common/StringInputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/StringOutputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/StringTools.h \
    turtlecoin-wallet-backend-cpp/src/Common/StringView.h \
    turtlecoin-wallet-backend-cpp/src/Common/TransactionExtra.h \
    turtlecoin-wallet-backend-cpp/src/Common/Varint.h \
    turtlecoin-wallet-backend-cpp/src/Common/VectorOutputStream.h \
    turtlecoin-wallet-backend-cpp/src/Common/int-util.h \
    turtlecoin-wallet-backend-cpp/src/Errors/Errors.h \
    turtlecoin-wallet-backend-cpp/src/Errors/ValidateParameters.h \
    turtlecoin-wallet-backend-cpp/src/Logger/Logger.h \
    turtlecoin-wallet-backend-cpp/src/Mnemonics/CRC32.h \
    turtlecoin-wallet-backend-cpp/src/Mnemonics/Mnemonics.h \
    turtlecoin-wallet-backend-cpp/src/Mnemonics/WordList.h \
    turtlecoin-wallet-backend-cpp/src/Nigel/Nigel.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/BinaryInputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/BinaryOutputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/BinarySerializationTools.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/CryptoNoteSerialization.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/ISerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/IStream.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/JsonInputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/JsonInputValueSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/JsonOutputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/KVBinaryCommon.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/KVBinaryInputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/KVBinaryOutputStreamSerializer.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/MemoryStream.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/SerializationOverloads.h \
    turtlecoin-wallet-backend-cpp/src/Serialization/SerializationTools.h \
    turtlecoin-wallet-backend-cpp/src/SubWallets/SubWallet.h \
    turtlecoin-wallet-backend-cpp/src/SubWallets/SubWallets.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/Addresses.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/ColouredMsg.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/Container.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/FormatTools.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/Input.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/LicenseCanary.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/Mixins.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/String.h \
    turtlecoin-wallet-backend-cpp/src/Utilities/Utilities.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/Constants.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/EventHandler.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/JsonSerialization.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/SynchronizationStatus.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/ThreadSafeQueue.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/Transfer.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/WalletBackend.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/WalletSynchronizer.h \
    turtlecoin-wallet-backend-cpp/src/WalletBackend/WalletSynchronizerRAIIWrapper.h \
    turtlecoin-wallet-backend-cpp/src/config/Ascii.h \
    turtlecoin-wallet-backend-cpp/src/config/CliHeader.h \
    turtlecoin-wallet-backend-cpp/src/config/Constants.h \
    turtlecoin-wallet-backend-cpp/src/config/CryptoNoteCheckpoints.h \
    turtlecoin-wallet-backend-cpp/src/config/CryptoNoteConfig.h \
    turtlecoin-wallet-backend-cpp/src/config/WalletConfig.h \
    turtlecoin-wallet-backend-cpp/src/crypto/blake256.h \
    turtlecoin-wallet-backend-cpp/src/crypto/crypto-ops.h \
    turtlecoin-wallet-backend-cpp/src/crypto/crypto.h \
    turtlecoin-wallet-backend-cpp/src/crypto/groestl.h \
    turtlecoin-wallet-backend-cpp/src/crypto/groestl_tables.h \
    turtlecoin-wallet-backend-cpp/src/crypto/hash-ops.h \
    turtlecoin-wallet-backend-cpp/src/crypto/hash.h \
    turtlecoin-wallet-backend-cpp/src/crypto/initializer.h \
    turtlecoin-wallet-backend-cpp/src/crypto/jh.h \
    turtlecoin-wallet-backend-cpp/src/crypto/keccak.h \
    turtlecoin-wallet-backend-cpp/src/crypto/oaes_config.h \
    turtlecoin-wallet-backend-cpp/src/crypto/oaes_lib.h \
    turtlecoin-wallet-backend-cpp/src/crypto/random.h \
    turtlecoin-wallet-backend-cpp/src/crypto/skein.h \
    turtlecoin-wallet-backend-cpp/src/crypto/skein_port.h \
    turtlecoin-wallet-backend-cpp/src/crypto/variant2_int_sqrt.h \
