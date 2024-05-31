#include "broker.h"

class Producer{

public:
    Producer(Broker& broker, const std::string& topic);
    void send(const std::string& message);

private:
    Broker& broker;
    std::string topic;

};