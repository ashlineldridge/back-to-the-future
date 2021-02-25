#pragma once

#include <string>
#include <vector>

enum class AdType {
  Classic,
  StandOut,
  Premium,
};


class Ad {
public:
  Ad(AdType type, double price) : type_(type), price_(price) {}
  constexpr AdType type() const { return type_; }
  constexpr double price() const { return price_; }

private:
  AdType type_;
  double price_;
};

struct PricingResult {
    double price;
    std::vector<Ad> remaining;
};


class PricingRule {
public:
  virtual PricingResult execute(const std::vector<Ad>& ads) = 0;
};

class GroupPricingRule : public PricingRule {
public:
  
  PricingResult execute(const std::vector<Ad> &ads) override {
    return PricingResult{};
  }
};

class XForYPricingRule : public PricingRule {
public:
  XForYPricingRule(AdType type, double x, double y) : type_(type), x_(x), y_(y) {
    //    assert(x > 0 && y > 0 && x >= y);
  }

  PricingResult execute(const std::vector<Ad> &ads) override {
    PricingResult res {0.0, {}};
    std::vector<Ad> bundle;

    for (const auto& a : ads) {
      if (a.type() != type_) {
        continue;
      }

      bundle.push_back(a);
      if (bundle.size() == x_) {
        res.price += bundle[0].price() * y_;
      }
    }

    return res;
  }

private:
  AdType type_;
  int x_;
  int y_;
};
