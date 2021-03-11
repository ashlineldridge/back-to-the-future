#include <iostream>

// See https://www.boost.org/doc/libs/1_67_0/doc/html/boost_asio/using.html#boost_asio.using.optional_separate_compilation
#include <boost/asio/impl/src.hpp>

#include <nghttp2/asio_http2_server.h>

using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;

int main(int argc, char *argv[]) {
  boost::system::error_code ec;
  http2 server;

  server.handle("/", [](const request &req, const response &res) {
    res.write_head(200);
    res.end("hello, world\n");
  });

  if (server.listen_and_serve(ec, "localhost", "3000")) {
    std::cerr << "error: " << ec.message() << std::endl;
  }
}

// #include "src/domain/ad.h"
// #include <iostream>
// #include <string>

// using namespace std;

// int main(int argc, const char* argv[]) {
//   // Ad c = Ad(AdType::classic, 269.99);
//   // Ad s = Ad(AdType::stand_out, 322.99);
//   Ad p = Ad(AdType::Premium, 394.99);

//   cout << "The cost is: " << p.price() << endl;

//   return 0;
// }
