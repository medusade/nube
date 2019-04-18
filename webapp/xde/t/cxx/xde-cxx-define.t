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
%#   File: xde-cxx-define.t
%#
%# Author: $author$
%#   Date: 3/29/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%define_separator,%(%else-then(%define_separator%,%(;)%)%)%,%
%%(%
%%parse(%define%,%define_separator%,,,,%(%
%%with(%
%_define_,%(%else-then(%_define_%,%(%kk_%#define%_kk%)%)%)%,%
%define_name,%(%else-then(%define_name%,%(%else-then(%left(%define%,:)%,%(%define%)%)%)%)%)%,%
%define_value,%(%else-then(%define_value%,%(%right(%define%,:)%)%)%)%,%
%%(%
%%if(%undef_define%,%(%
%%with(undef,%(%define_name%)%,%(%
%%include(%filepath%/%fileprefix%cxx-undef.t)%%
%)%)%%
%)%)%%
%%_define_% %dd_%%do(%define_name%)%%_dd% %do(%define_value%)%
%
%)%)%%
%)%,define)%%
%)%)%