#include "../../build_config_defines.h"

#include "luapanda.h"

#ifdef USE_LUAJIT_ONE
#pragma comment(lib, "LuaJIT-1.1.8.lib")
#else
#pragma comment(lib, "lua51.lib")
#endif //-USE_LUAJIT_ONE

#include "lua.hpp"

//#pragma comment(lib, "xrCore.lib")
//#pragma comment(lib, "user32.lib")

extern "C"{
    #include "lfs.h"
    #include "lmarshal.h"
    #include "luasocket/socket.h"
    #include "luasocket/luasocket.h"
    #include <lua.h>
}

struct luajit {
    static void open_lib(lua_State* L, LPCSTR module_name, lua_CFunction function)
    {
        lua_pushcfunction(L, function);
        lua_pushstring(L, module_name);
        lua_call(L, 1, 0);
    }
};

//#include "Libs.h"
#include "script_additional_libs.h"

static const struct luaL_reg R[] =
{
	{ NULL,	    NULL },
};

//extern "C" __declspec(dllexport)
int luaopen_lua_extensions(lua_State *L, bool IsDebug = false){

    open_additional_libs(L);

    luaopen_lfs(L);
    //open_string(L);
    //open_math(L);
    //open_table(L);
    luaopen_marshal(L);
    //open_kb(L);
    //open_log(L); 

    if (IsDebug)
    {
        luaopen_jit(L);
        luaopen_ffi(L);
        luaopen_debug(L);
    }

	luaL_register(L, "lua_extensions", R);
	return 0;
}

lua_CFunction luaopen_socket_core_init() {
	return luaopen_socket_core;
}

void pdebug_init_init(lua_State* L) {
    pdebug_init(L);
}

void init_socket_core(lua_State* L) {
    luajit::open_lib(L, "socket.core", luaopen_socket_core_init());
}