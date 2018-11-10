add_executable(gen.token.wasm ${CMAKE_CURRENT_SOURCE_DIR}/src/gen.token.cpp)
target_include_directories(gen.token.wasm
   PUBLIC 
   ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(gen.token.wasm
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/abi/gen.token.abi" "${CMAKE_CURRENT_BINARY_DIR}" COPYONLY)
#install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION ${WASM_ROOT}/eosio.wasmsdk/include)
