#!/bin/bash

## This script compiles an Elixir source file to the 'Beam' format. 
## *.beam files also contain a language called "Erlang Abstract Format"
## which is a version of the Erlang source code that Elixir compiled to 
## formatted as an Erlang datastructure.
##
## We use this datastructure in "maf2-syntax" to construct an AST 
## to be used for abstract interpetation of Erlang and Elixir programs alike.

# TODO: perhaps the same functionality can also be provided by the `elixir`
# module without first compiling the file down to a beam module.

if [ -z $1 ] ; then 
   echo "Invalid usage."
   echo "Usage: "
   echo "$0 FILENAME"
   exit 1 
fi

FILENAME=$1
MODULENAME="${FILENAME%.*}"

if [ ! -f $FILENAME ] ; then 
   echo "File $FILENAME does not exist"
   exit 1
fi

elixirc $1

if [ $? -ne 0 ] ; then 
   echo "Failed to compile $FILENAME" 
   exit 1
fi

export ERL_LIBS=$(elixir -e 'IO.puts :code.lib_dir(:elixir)')
erl -noinput -eval "{ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(\"$MODULENAME\",[abstract_code]),io:format(\"~p~n\", [AC])." -s init stop > $MODULENAME.ec
if [ $? -ne 0 ] ; then 
   rm $MODULENAME.ec
   echo "Failed to load the erlang abstract format"
   echo "Please check whether the Elixir Erlang libraries are on your path"
   exit 1
fi

rm $MODULENAME.beam
