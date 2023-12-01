# Builds configures the debug build of Fan
debug:
	mkdir -p build; cd build; cmake ../

# Builds configures the release build of Fan
release:
	mkdir -p build; cd build; cmake -DCMAKE_BUILD_TYPE=Release ../

exp:
	tar -czvf build/fan.tar.gz fan.sh lang/ build/fan
