#include <gtest/gtest.h>
#include "broker.h"
#include "consumer.h"
#include "producer.h"


class ExecutionService{
public:
    ExecutionService(Broker& broker): 
    executionOrderProducer(broker, "execution_order"), 
    riskAnalysisConsumer(broker, "risk_analysis", [this](const std::string& message){this->handleRiskMessage(message);}), 
    marketDataConsumer(broker, "market_data", [this](const std::string& message){this->handleMarketData(message);})
    {}
    void sendExecutionOrder(const std::string& order){
        executionOrderProducer.send(order);
    }
    void handleRiskMessage(const std::string& risk_message){
       std::cout << "Risk Message Received: " << risk_message << std::endl;
    }
    void handleMarketData(const std::string& data){
        std::cout << "Market Data Received: " << data << std::endl;
    }

private:
    Producer executionOrderProducer;
    Consumer riskAnalysisConsumer;
    Consumer marketDataConsumer;

};


class RiskAnalysisService{
public:

    RiskAnalysisService(Broker &broker) : 
        marketDataConsumer(broker, "market_data", [this](const std::string& message){this->handleMarketData(message);}),
        executionSeriveProducer(broker, "execution") {}
    

    void handleMarketData(const std::string& data){
        std::cout << "Market Data Received at risk: " << data << std::endl;
    }

private:
    Producer executionSeriveProducer;
    Consumer marketDataConsumer;
};

class MarketDataService{
    
};

