#include "src/advertisement/advertisement.h"
#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char* argv[]) {
  auto a = Advertisement();
  cout << "hi";
  cout << "yo";
  cout << "";
  cout << a.say_hello("Yooo") << " " << a.say_goodbye() << endl;
  cout << a.say_hello("giday") << endl;
  
  return 0;
}
