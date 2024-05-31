#ifndef BROKER_H
#define BROKER_H

#include <string>
#include <functional>
#include <unordered_map>
#include <vector>
#include <mutex>
class Broker{

public:

    using Callback = std::function<void(const std::string&)>;

    void publish(const std::string& topic, const std::string& message);
    void subscribe(const std::string& topic, Callback callback);

private:

    std::unordered_map<std::string, std::vector<Callback>> subscribers;
    std::mutex mtx;
};


#endif BROKER_H