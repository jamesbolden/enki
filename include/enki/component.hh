#ifndef ENKI_COMPONENT_HH
#define ENKI_COMPONENT_HH

#include <string>

namespace enki {
    class component {
    public:
        component() { }

        std::string component_type() const { return component_type_; }
        
    private:
        static constexpr std::string component_type_ = "COMPONENT";
    };
}

#endif // ENKI_COMPONENT_HH