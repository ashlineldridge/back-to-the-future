#pragma once

#include <spdlog/common.h>
#include <spdlog/spdlog.h>

namespace cbot {
namespace logger {

#define ALL_LOGGER_IDS(FUNCTION)                                               \
  FUNCTION(http)                                                               \
  FUNCTION(logger)                                                             \
  FUNCTION(main)

#define GENERATE_ENUM(X) X,
#define GENERATE_STRING(X) #X,

const auto DEFAULT_LOG_LEVEL = spdlog::level::info;
const auto DEFAULT_LOG_FORMAT = "[%Y-%m-%d %T.%e][%t][%l][%n] %v";

enum class Id { ALL_LOGGER_IDS(GENERATE_ENUM) };

class Registry {
public:
  static std::shared_ptr<spdlog::logger> getLogger([[maybe_unused]] Id id) {
    return nullptr;
  }

  // static DelegatingLogSinkSharedPtr getSink() {
    // static DelegatingLogSinkSharedPtr sink = DelegatingLogSink::init();
    // return sink;
  // }

  // static void setLogLevel(spdlog::level::level_enum log_level);

  // static void setLogFormat(const std::string& log_format);

  // static std::vector<spdlog::logger>& loggers() { return allLoggers(); }

  // static bool initialized() { return getSink()->hasLock(); }

  // static Logger* logger(const std::string& log_name);

private:
  static std::vector<std::shared_ptr<spdlog::logger>>& allLoggers();
};

template <Id id> class Loggable {
  protected:

  static std::shared_ptr<spdlog::logger> __loggerDoNotCallDirectly() {
    static std::shared_ptr<spdlog::logger> instance = Registry::getLogger(id);
    return instance;
  }
};

} // namespace logger
} // namespace cbot
