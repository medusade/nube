%#############################################################################
%# Copyright (c) 1988-2008 $author$
%#
%# This software is provided by the author and contributors ``as is'' and
%# any express or implied warranties, including, but not limited to, the
%# implied warranties of merchantability and fitness for a particular purpose
%# are disclaimed.  In no event shall the author or contributors be liable
%# for any direct, indirect, incidental, special, exemplary, or consequential
%# damages (including, but not limited to, procurement of substitute goods
%# or services; loss of use, data, or profits; or business interruption)
%# however caused and on any theory of liability, whether in contract, strict
%# liability, or tort (including negligence or otherwise) arising in any way
%# out of the use of this software, even if advised of the possibility of
%# such damage.
%#
%#   File: xde-cstring-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 11/3/2008
%#
%#############################################################################
%with(%
%%(%
%%with(%
%typedef,%(c%Class_name%ReaderInterface:cReaderInterfaceT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% cInterfaceBase%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%WriterInterface:cWriterInterfaceT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% cInterfaceBase%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%ReaderImplement:cReaderImplementT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% c%Class_name%ReaderInterface%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%WriterImplement:cWriterImplementT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% c%Class_name%WriterInterface%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%StreamInterface:cStreamInterfaceT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% c%Class_name%ReaderInterface, c%Class_name%WriterInterface%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%StreamImplement:cStreamImplementT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH,
%indent% c%Class_name%ReaderInterface, c%Class_name%WriterInterface, 
%indent% c%Class_name%StreamInterface, c%Class_name%ReaderImplement, c%Class_name%WriterImplement%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%StringInterface:cStringInterfaceT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, %Class_name%, NULL_%CLASS_NAME%,
%indent% c%Class_name%StreamInterface%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%StringImplement:cStringImplementT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, %Class_name%, NULL_%CLASS_NAME%,
%indent% c%Class_name%StreamInterface, c%Class_name%StringInterface, c%Class_name%StreamImplement%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%StringExtends:std::basic_string%lt%%Class_name%%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%%with(%
%typedef,%(c%Class_name%String:cStringT
%indent%%lt%%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, %Class_name%, NULL_%CLASS_NAME%,
%indent% c%Class_name%StreamInterface, c%Class_name%StringImplement, c%Class_name%StringExtends%gt%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%%
%)%)%