#include "src/domain/ad.h"
#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char* argv[]) {
  // Ad c = Ad(AdType::classic, 269.99);
  // Ad s = Ad(AdType::stand_out, 322.99);
  Ad p = Ad(AdType::Premium, 394.99);

  cout << "The cost is: " << p.price() << endl;

  return 0;
}
