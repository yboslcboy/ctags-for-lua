# ctags-for-lua

		As we know, those programmers taking VIM as IDE usually use CSCOPE and 
	CTAGS to locate functions and constants. And they work well in general. 
	However, when going for lua, CTAGS cannot generate accurate tags.
	
		Fortunately, CTAGS provides some option -- mainly "--regex-<LANG>" -- 
	for users to define how the tags of a new language are found. All we need 
	is to make up regular expressions as arguments of this option, and that is 
	what this project has done.

