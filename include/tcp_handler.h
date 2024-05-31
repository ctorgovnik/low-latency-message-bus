#ifndef TCP_HANDLER_H
#define TCP_HANDLER_H

#include <string>

// Function to send a TCP message to a specified host and port
void sendTCPMessage(const std::string& host, int port, const std::string& message);

// Function to receive a TCP message on a specified port
std::string receiveTCPMessage(int port);

#endif