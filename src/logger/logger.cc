#include "src/logger/logger.h"

#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_sinks.h>

// #include <cassert> // use direct system-assert to avoid cyclic dependency.
// #include <cstdint>
// #include <iostream>
// #include <string>
// #include <vector>

// #include "common/common/lock_guard.h"

// #include "absl/strings/ascii.h"
// #include "absl/strings/escaping.h"
// #include "absl/strings/strip.h"


namespace cbot {
namespace logger {

// #define GENERATE_LOGGER(X) __create_logger(#X),

// std::shared_ptr<spdlog::logger> __create_logger(const std::string& name) {
//   auto logger = std::make_shared<spdlog::logger>(name, spdlog::sinks::stdout_sink_mt());
//   logger->set_pattern(DEFAULT_LOG_FORMAT);
//   logger->set_level(DEFAULT_LOG_LEVEL);

//   // Ensure that critical errors, especially ASSERT/PANIC, get flushed
//   logger->flush_on(spdlog::level::critical);

//   return logger;
// }


// std::vector<std::shared_ptr<spdlog::logger>>& Registry::allLoggers() {
//   static std::vector<std::shared_ptr<spdlog::logger>>* all_loggers =
//       new std::vector<std::shared_ptr<spdlog::logger>>({ALL_LOGGER_IDS(GENERATE_LOGGER)});
//   return *all_loggers;
// }

// std::shared_ptr<spdlog::logger> Registry::getLogger(Id id) {
//   return allLoggers()[static_cast<int>(id)];
// }

// void Registry::setLogLevel(spdlog::level::level_enum log_level) {
//   for (auto logger : allLoggers()) {
//     logger.set_level(static_cast<spdlog::level::level_enum>(log_level));
//   }
// }

// void Registry::setLogFormat(const std::string& log_format) {
//   for (auto logger : allLoggers()) {
//     logger.set_pattern(log_format);
//   }
// }

} // namespace logger
} // namespace cbot
