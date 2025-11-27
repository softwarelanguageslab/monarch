#!/bin/bash

## This script compiles an Elixir source file to its Erlang Core format.


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
