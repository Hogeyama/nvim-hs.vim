function! nvimhs#cabal#pluginstarter()
	return
				\ { 'buildCommand': function('nvimhs#cabal#buildCommand')
				\ , 'exePath': function('nvimhs#cabal#exePath')
				\ }
endfunction


function! nvimhs#cabal#buildCommand(name)
	return [ 'cabal', 'v2-build' ]
endfunction


function! nvimhs#cabal#exePath(workingDirectory, name)
	return join(nvimhs#execute(a:workingDirectory,
				\ ['cabal', 'exec', '--', 'which', a:name]), '')
endfunction
