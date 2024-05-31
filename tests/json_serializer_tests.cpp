#include <gtest/gtest.h>
#include "../include/json_serializer.h"

using json = nlohmann::json;

enum Side { Buy, Sell };

struct TradeMessage {

    int trade_id;
    std::string symbol;
    double price;
    int quantity;
    Side side;

};

struct RiskMessage {

    std::string symbol;
    double stop_loss;
};

//to json for side
void to_json(json& j, const Side& side){

    j = (side == Buy) ? "Buy" : "Sell";
}

// from json for side

void from_json(const json& j, Side& side){
    std::string side_str = j.get<std::string>();
    if (side_str == "Buy"){
        side = Buy;
    }
    else{
        side = Sell;
    }

}

void to_json(json& j, const TradeMessage& trade){
    j = json{{"trade_id", trade.trade_id}, {"symbol", trade.symbol}, {"price", trade.price}, {"quantity", trade.quantity}, {"side", trade.side}};
}

void from_json(const json& j, TradeMessage& trade){

    j.at("trade_id").get_to(trade.trade_id);
    j.at("symbol").get_to(trade.symbol);
    j.at("price").get_to(trade.price);
    j.at("quantity").get_to(trade.quantity);
    j.at("side").get_to(trade.side);
}

void to_json(json& j, const RiskMessage& risk){

    j = json{{"symbol", risk.symbol}, {"stop_loss", risk.stop_loss}};

}

void from_json(const json& j, RiskMessage& risk){

    j.at("symbol").get_to(risk.symbol);
    j.at("stop_loss").get_to(risk.stop_loss);

}

// Test case for JSON serialization
TEST(JsonSerializerTests, SerializeTrade){

    TradeMessage trade = {123, "AAPL", 170.2, 3, Buy};
    std::string json_test = serialize_json(trade);

    std::string expected_json = R"({"trade_id":123,"symbol":"AAPL","price":170.2,"quantity":3,"side":"Buy"})";
    std::cout << expected_json << std::endl;
    // Parse both JSON strings to json objects
    json json_test_obj = json::parse(json_test);
    json expected_json_obj = json::parse(expected_json);

    EXPECT_EQ(json_test_obj, expected_json_obj);

}

TEST(JsonSerializerTests, DeserializeTrade){

    std::string json_str = R"({"trade_id":123,"symbol":"AAPL","price":170.2,"quantity":3,"side":"Buy"})";

    TradeMessage tradeTest = deserialize_json<TradeMessage>(json_str);

    TradeMessage expectedTrade = {123, "AAPL", 170.2, 3, Buy};

    EXPECT_EQ(tradeTest.trade_id, expectedTrade.trade_id);
    EXPECT_EQ(tradeTest.symbol, expectedTrade.symbol);
    EXPECT_DOUBLE_EQ(tradeTest.price, expectedTrade.price);
    EXPECT_EQ(tradeTest.quantity, expectedTrade.quantity);
    EXPECT_EQ(tradeTest.side, expectedTrade.side);

}

TEST(JsonSerializerTests, SerializeRisk){

    RiskMessage risk = {"AAPL", 140.5};

    std::string json_str = serialize_json(risk);

    std::string expected_json = R"({"symbol":"AAPL","stop_loss":140.5})";

    json actual_json_obj = json::parse(json_str);
    json expected_json_obj = json::parse(expected_json);

    EXPECT_EQ(actual_json_obj, expected_json_obj);
}

TEST(JsonSerializerTests, DeserializeRisk){

    std::string example_json_str = R"({"symbol":"AAPL","stop_loss":140.5})";

    RiskMessage actual_risk = deserialize_json<RiskMessage>(example_json_str);

    RiskMessage expected_risk = {"AAPL", 140.5};

    EXPECT_EQ(actual_risk.symbol, expected_risk.symbol);
    EXPECT_EQ(actual_risk.stop_loss, expected_risk.stop_loss);


}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
