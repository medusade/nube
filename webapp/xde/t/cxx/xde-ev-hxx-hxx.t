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
%#   File: xde-ev-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 5/14/2008
%#
%# Template for creating XDE derived Ev C++ class .hxx file
%#
%#############################################################################
%with(%
%%(%
%%include(%filepath%/%fileprefix%cxx-includes.t)%%
%%include(%filepath%/%fileprefix%cxx-class-separator.t)%%
%%include(%filepath%/%fileprefix%cxx-class-template.t)%%
%%include(%filepath%/%fileprefix%hxx-class-begin.t)%%
%%with(indent,%(%indent%    )%,%(%
%%include(%filepath%/%fileprefix%hxx-class-constructor.t)%%
%%include(%filepath%/%fileprefix%hxx-class-destructor.t)%%
%%with(%
%functions,%(static)%,%
%function_name,%(CreateInstance)%,%
%function_return,%(%class%* instance=0)%,%
%function_parameters,%(EvError%amp% error)%,%
%function_prototype,%(yes)%,%
%parameters_separator,%(|)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-hxx-class-functions.t)%%
%)%)%%
%%with(%
%functions,%(static)%,%
%function_name,%(DestroyInstance)%,%
%function_return,%(EvError error)%,%
%function_parameters,%(%class%%amp% instance)%,%
%function_prototype,%(yes)%,%
%parameters_separator,%(|)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-hxx-class-functions.t)%%
%)%)%%
%%include(%filepath%/%fileprefix%hxx-class-functions.t)%%
%%include(%filepath%/%fileprefix%hxx-class-setget.t)%%
%%include(%filepath%/%fileprefix%hxx-class-doundo.t)%%
%%include(%filepath%/%fileprefix%hxx-class-operators.t)%%
%)%)%%
%%include(%filepath%/%fileprefix%hxx-class-end.t)%%
%)%)%