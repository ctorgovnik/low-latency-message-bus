#ifndef JSON_SERIALIZER_H
#define JSON_SERIALIZER_H

#include <string>
#include <nlohmann/json.hpp>


using json = nlohmann::json;

template<typename T>
std::string serialize_json(const T& data){

    return json(data).dump();

}

template<typename T>
T deserialize_json(const std::string& str){

    return json::parse(str).get<T>();

}


#endif