#include <iostream>

#include <nghttp2/asio_http2_server.h>

using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;

const int PORT = 9000;

int main(int argc, char *argv[]) {
  boost::system::error_code ec;
  http2 server;

  server.handle("/", [](const request &req, const response &res) {
    res.write_head(200);
    res.end("hello, world\n");
  });

  std::cout << "Listening on http://localhost:9000" << std::endl;

  if (server.listen_and_serve(ec, "localhost", "9000")) {
    std::cerr << "error: " << ec.message() << std::endl;
  }
}
