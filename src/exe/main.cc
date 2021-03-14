#include <fmt/core.h>
#include <iostream>
#include <nghttp2/asio_http2_server.h>
#include <spdlog/spdlog.h>

using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;

const int PORT = 9000;

int main(int argc, char *argv[]) {
    spdlog::info("Welcome to spdlog!");
    spdlog::error("Some error message with arg: {}", 1);

    spdlog::warn("Easy padding in numbers like {:08d}", 12);
    spdlog::critical("Support for int: {0:d};  hex: {0:x};  oct: {0:o}; bin: {0:b}", 42);
    spdlog::info("Support for floats {:03.2f}", 1.23456);
    spdlog::info("Positional args are {1} {0}..", "too", "supported");
    spdlog::info("{:<30}", "left aligned");

    spdlog::set_level(spdlog::level::debug); // Set global log level to debug
    spdlog::debug("This message should be displayed..");

    // change log pattern
    spdlog::set_pattern("[%H:%M:%S %z] [%n] [%^---%L---%$] [thread %t] %v");

    // Compile time log levels
    // define SPDLOG_ACTIVE_LEVEL to desired level
    SPDLOG_TRACE("Some trace message with param {}", 42);
    SPDLOG_DEBUG("Some debug message");

  boost::system::error_code ec;
  http2 server;

  server.handle("/", [](const request &req, const response &res) {
    res.write_head(200);
    res.end("hello, world\n");
  });

  fmt::print("Listening on http://localhost:{}\n", PORT);

  if (server.listen_and_serve(ec, "localhost", "9000")) {
    std::cerr << "error: " << ec.message() << std::endl;
  }
}
