
@SET OUT_DIR=pb_lua
@SET OPTION= --lua_out=%OUT_DIR% --plugin=protoc-gen-lua="plugin\gen.bat" --proto_path=protos

protoc protos\*.proto %OPTION%

xcopy .\pb_lua\*.* ..\..\Output\Lua\pb\ /EKRY

@pause