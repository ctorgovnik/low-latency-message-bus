#ifndef UDP_HANDLER_H
#define UDP_HANDLER_H

#include <string>

void sendUDPMessage(const std::string& host, int port, const std::string& message);
std::string receiveUDPMessage(int port);

#endif // UDP_HANDLER_H