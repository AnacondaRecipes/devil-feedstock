cd DevIL
md build
cd build

:: Configure
cmake .. -LAH -GNinja                                ^
  -DBUILD_SHARED_LIBS:bool=on                        ^
  -DBUILD_STATIC_LIBS:bool=off                       ^
  -DCMAKE_BUILD_TYPE=Release                         ^
  -DCMAKE_INSTALL_PREFIX:path=%LIBRARY_PREFIX%       ^
  -DWITH_LCMS2:bool=on

:: Build and install
cmake --build .
cmake --install .
