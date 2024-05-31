#include "../include/broker.h"
#include <string>

void Broker::publish(const std::string& topic, const std::string& message){

    auto it = subscribers.find(topic);

    if (it != subscribers.end()){

        for (auto callback : it->second){
            callback(message);
        }
    }

}

void Broker::subscribe(const std::string& topic, Callback callback){

    std::lock_guard<std::mutex> lock(mtx);

    subscribers[topic].emplace_back(callback);

}