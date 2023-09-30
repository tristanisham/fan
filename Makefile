# Builds configures the debug build of Void
void: 
	mkdir -p build; cd build; cmake ../

# Builds configures the release build of Void
release:
	mkdir -p build; cd build; cmake -DCMAKE_BUILD_TYPE=Release ../