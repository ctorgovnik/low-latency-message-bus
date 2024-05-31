#include <gtest/gtest.h>
#include "../include/broker.h"


class SignalAnalysisService{

public:
    SignalAnalysisService(Broker& broker) : broker(broker) {}

    void sendSignal(const std::string& signal){
        broker.publish("signal_topic", signal);
    }

private:
    Broker& broker;
};

class ExecutionService{

public: 
    ExecutionService(Broker& broker) : broker(broker) {

        broker.subscribe("signal_topic", [this](const std::string& signal){
            this->onSignalReceived(signal);
        });
    }

    void onSignalReceived(const std::string& signal){

        std::cout << "Signal received: " << signal << std::endl;
    }


private:
    Broker& broker;

};

TEST(BrokerTests, PublishSubscribeTest){
    Broker broker;

    SignalAnalysisService signal_desk(broker);
    ExecutionService execution_desk(broker);

    signal_desk.sendSignal("Buy AAPL");

    // EXPECT_EQ(broker.subscribers["signal_topic"], "Buy AAPL");
    
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}