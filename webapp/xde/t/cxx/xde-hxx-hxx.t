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
%#   File: xde-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 6/27/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%if(%system_include%,%(%with(%
%include_system,%(yes)%,%
%include,%(%system_include%)%,%
%%(%include(%filepath%/%fileprefix%cxx-include.t)%)%)%)%)%%
%%if(%include%,%(%include(%filepath%/%fileprefix%cxx-include.t)%)%)%%
%%if(%ifdef%,%(%include(%filepath%/%fileprefix%cxx-ifdef.t)%)%)%%
%%if(%ifndef%,%(%include(%filepath%/%fileprefix%cxx-ifndef.t)%)%)%%
%%if(%enum%,%(%include(%filepath%/%fileprefix%hxx-enum.t)%)%)%%
%%if(%undef%,%(%parse(%undef%,;,,,%(%include(%filepath%/%fileprefix%cxx-undef.t)%)%,undef)%)%)%%
%%if(%define%,%(%parse(%define%,;,,,%(%include(%filepath%/%fileprefix%cxx-define.t)%)%,define)%)%)%%
%%if(%typedef%,%(%parse(%typedef%,;,,,%(%include(%filepath%/%fileprefix%cxx-typedef.t)%)%,typedef)%)%)%%
%%if(%class%,%(%
%%parse(%class%,;,,,%(%include(%filepath%/%fileprefix%hxx-class.t)%)%,class)%%
%)%,%(%
%%if(%functions%,%(%parse(%function_name%,;,,,%(%
%%include(%filepath%/%fileprefix%hxx-function.t)%%
%)%,f)%)%)%%
%)%)%%
%)%)%