#include <cstdlib>
#include <fmt/core.h>
#include <iostream>
#include <nghttp2/asio_http2_server.h>
#include <spdlog/common.h>
#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_sinks.h>

using namespace nghttp2::asio_http2;
using namespace nghttp2::asio_http2::server;

const auto SERVER_PORT = 9000;
const auto DEFAULT_LOG_LEVEL = spdlog::level::info;
const auto DEFAULT_LOG_FORMAT = "[%Y-%m-%d %T.%e][%t][%L] %v";

int main([[maybe_unused]] int argc, [[maybe_unused]] char *argv[]) {
  spdlog::set_level(DEFAULT_LOG_LEVEL);
  spdlog::set_pattern(DEFAULT_LOG_FORMAT);
  auto logger = spdlog::stdout_logger_mt("global");

  http2 server;
  server.handle("/", []([[maybe_unused]] const request &req, const response &res) {
    res.write_head(200);
    res.end("Hello, world!\n");
  });

  // Why is there launch and attach? Do I need both?
  logger->info("Listening on http://localhost:{}\n", SERVER_PORT);

  boost::system::error_code ec;
  if (server.listen_and_serve(ec, "localhost", fmt::format("{}", SERVER_PORT))) {
    logger->error("Error running server: {}", ec.message());
    exit(1);
  }
}
