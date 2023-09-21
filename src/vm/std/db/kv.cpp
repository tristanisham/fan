#include "leveldb/options.h"
#include "leveldb/status.h"
#include "lib.hpp"
// https://github.com/google/leveldb/blob/main/doc/index.md
#include "leveldb/db.h"

void lib::db::kv::keyValAlloc(WrenVM* vm) {
	leveldb::DB** db = reinterpret_cast<leveldb::DB**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(leveldb::DB*)));
	const char* path = wrenGetSlotString(vm, 1);
	leveldb::Options options;
	options.create_if_missing = true;
	leveldb::Status status = leveldb::DB::Open(options, path, db);
	if (!status.ok()) {
		wrenSetSlotString(vm, 0, status.ToString().c_str());
		wrenAbortFiber(vm, 0);
		return;
	}
}

void lib::db::kv::keyValFinalize(void* data) {
	delete *reinterpret_cast<leveldb::DB**>(data);
}