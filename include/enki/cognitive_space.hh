#ifndef ENKI_COGNITIVE_SPACE_HH
#define ENKI_COGNITIVE_SPACE_HH

#include <enki/component.hh>

namespace enki {
    class cognitive_space : public component {
    public:
        cognitive_space() : component() { }

    private:
        static constexpr std::string component_type_ = "COGNITIVE_SPACE";    
    };
}

#endif // ENKI_COGNITIVE_SPACE_HH