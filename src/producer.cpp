#include "../include/producer.h"

Producer::Producer(Broker& broker, const std::string& topic) : broker(broker), topic(topic) {}

void Producer::send(const std::string& message){
    broker.publish(topic, message);
}

