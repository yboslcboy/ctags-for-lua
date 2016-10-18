
" ctags
function MyMakeTag()
    " custom regular expression for lua:
	" function class:func()
	" function class.func()
	" function func()
	" class.VAR = 1
	" class.VAR = {
	" VAR = 1
	" VAR = {
	let myLuaRegex = ' --langdef=MYLUA --langmap=MYLUA:.lua --languages=MYLUA '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+):(\w+).*$/\2/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+)\.(\w+).*$/\2/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*(\w+)\.([A-Z0-9_]+)\s*=\s*[0-9]+.*$/\2/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*(\w+)\.([A-Z0-9_]+)\s*=\s*\{.*$/\2/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*([A-Z0-9_]+)\s*=\s*[0-9]+.*$/\1/e/" '
	let myLuaRegex = myLuaRegex . ' --regex-MYLUA="/^\s*([A-Z0-9_]+)\s*=\s*\{.*$/\1/e/" '

    silent execute '!ctags --excmd=pattern --exclude=*.ini -R' . myLuaRegex
endfunction

