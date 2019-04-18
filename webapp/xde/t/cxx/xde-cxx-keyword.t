%#############################################################################
%# Copyright (c) 1988-2009 $author$
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
%#   File: xde-cxx-keyword.t
%#
%# Author: $author$
%#   Date: 6/6/2009
%#
%#############################################################################
%with(%
%keywords,%(%import(%filepath%/%fileprefix%cxx-keywords.txt)%)%,%
%keyword,%(%
%%parse(%keywords%,
,,,,%(%equal(%kk%,%word%)%)%,kk)%%
%)%,%
%%(%
%%if(%keyword%,%(%kk_%%word%%_kk%)%,%(%word%)%)%%
%)%)%