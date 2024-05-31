#ifndef CONSUMER_H
#define CONSUMER_H

#include "broker.h"
#include <functional>

class Consumer{

public:
    Consumer(Broker& broker, const std::string& topic, Broker::Callback callback);

private:

    Broker& broker;

    
};

#endif CONSUMER_H