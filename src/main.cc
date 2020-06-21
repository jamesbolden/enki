#include <iostream>
#include <enki/enki.hh>

int main(int argc, char **argv) {
    enki::cognitive_space x();

    std::cout << x.component_type() << std::endl;
    return 0;
}