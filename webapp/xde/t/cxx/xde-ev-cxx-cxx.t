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
%#   File: xde-ev-cxx-cxx.t
%#
%# Author: $author$
%#   Date: 5/14/2008
%#
%# Template for creating XDE derived Ev C++ class .cxx file
%#
%#############################################################################
%with(%
%%(%
%%_#include_% "%_class%.%fileheaderextension%"
%
%%include(%filepath%/%fileprefix%cxx-class-separator.t)%%
%%else(%equal(no,%constructor%)%,%(
%include(%filepath%/%fileprefix%cxx-constructor.t)%)%)%%
%%else(%equal(no,%destructor%)%,%(
%include(%filepath%/%fileprefix%cxx-destructor.t)%)%)%%
%%with(%
%functions,%(static)%,%
%function_name,%(CreateInstance)%,%
%function_return,%(%class%* instance=0)%,%
%function_parameters,%(EvError%amp% error)%,%
%statement,%(error = EV_ERROR_NOT_IMPLEMENTED)%,%
%function_prototype,%()%,%
%parameters_separator,%(|)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-cxx-class-functions.t)%%
%)%)%%
%%with(%
%functions,%(static)%,%
%function_name,%(DestroyInstance)%,%
%function_return,%(EvError error=EV_ERROR_NOT_IMPLEMENTED)%,%
%function_parameters,%(%class%%amp% instance)%,%
%function_prototype,%()%,%
%parameters_separator,%(|)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-cxx-class-functions.t)%%
%)%)%%
%%include(%filepath%/%fileprefix%cxx-functions.t)%%
%)%)%