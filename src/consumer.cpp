#include "../include/consumer.h"


Consumer::Consumer(Broker& broker, const std::string& topic, Broker::Callback callback) : broker(broker){

    broker.subscribe(topic, callback);

}

