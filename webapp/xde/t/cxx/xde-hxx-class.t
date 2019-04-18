%#############################################################################
%# Copyright (c) 1988-2007 $author$
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
%#   File: xde-hxx-class.t
%#
%# Author: $author$
%#   Date: 8/25/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%if(%template%,%(
%_#undef_% CDB_CLASS
%_#define_% CDB_CLASS "%class%"
)%)%%
%%include(%filepath%/%fileprefix%cxx-class-separator.t)%%
%%include(%filepath%/%fileprefix%cxx-class-template.t)%%
%%include(%filepath%/%fileprefix%hxx-class-begin.t)%%
%%with(indent,%(%indent%    )%,%(%
%%include(%filepath%/%fileprefix%hxx-class-constructor.t)%%
%%include(%filepath%/%fileprefix%hxx-class-destructor.t)%%
%%include(%filepath%/%fileprefix%hxx-class-functions.t)%%
%%include(%filepath%/%fileprefix%hxx-class-setget.t)%%
%%include(%filepath%/%fileprefix%hxx-class-doundo.t)%%
%%include(%filepath%/%fileprefix%hxx-class-operators.t)%%
%)%)%%
%%include(%filepath%/%fileprefix%hxx-class-end.t)%%
%%if(%template%,%(
%_#undef_% CDB_CLASS
)%)%%
%)%)%