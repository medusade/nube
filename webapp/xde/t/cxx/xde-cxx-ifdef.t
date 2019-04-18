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
%#   File: xde-cxx-ifdef.t
%#
%# Author: $author$
%#   Date: 6/27/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%elif,%(%right-of-left(%ifdef%,;)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,;)%,%ifdef%)%)%,%
%elsedef,%(%right(%ifdef%,/)%)%,%
%elseinclude,%(%right(%elsedef%,=)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,/)%,%ifdef%)%)%,%
%ifinclude,%(%else(%no_ifinclude%,%(%right(%ifdef%,=)%)%)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,=)%,%ifdef%)%)%,%
%ifname,%(%right(%ifdef%,:)%)%,%
%elsename,%(%else-then(%left(%elsedef%,=)%,%(%else-then(%elsedef%,%(%if(%ifname%,%(Otherwise)%)%)%)%)%)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,:)%,%ifdef%)%)%,%
%ifdef_comment,%(%(%include(%filepath%/%fileprefix%cxx-ifdef-comment.t)%)%)%,%
%ifdef_include,%(%(%include(%filepath%/%fileprefix%cxx-include.t)%)%)%,%
%%(
%kk_%#if%_kk% %kk_%%ndefined%defined%_kk%(%ifdef%) %if(%ifname%,%(
%do(%ifdef_comment%)%)%)%%
%%if(%ifinclude%,%(%with(include,%(%ifinclude%)%,%(%do(%ifdef_include%)%)%)%)%)%%
%%parse(%elif%,;,,,%(%with(%
%ifinclude,%(%else(%no_ifinclude%,%(%right(%ifdef%,=)%)%)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,=)%,%ifdef%)%)%,%
%ifname,%(%right(%ifdef%,:)%)%,%
%ifdef,%(%else-then(%left(%ifdef%,:)%,%ifdef%)%)%,%
%%(
%kk_%#elif%_kk% %kk_%%ndefined%defined%_kk%(%ifdef%) %if(%ifname%,%(
%do(%ifdef_comment%)%)%)%%
%%if(%ifinclude%,%(%with(include,%(%ifinclude%)%,%(%do(%ifdef_include%)%)%)%)%)%%
%)%)%)%,ifdef)%
%kk_%#else%_kk% %cc_%%left_comment% %ndefined%defined(%ifdef%) %right_comment%%_cc%%if(%elsename%,%(
%apply(ifname,%elsename%,%(%do(%ifdef_comment%)%)%)%)%)%%
%%if(%elseinclude%,%(%with(include,%(%elseinclude%)%,%(%do(%ifdef_include%)%)%)%)%)%
%kk_%#endif%_kk% %cc_%%left_comment% %ndefined%defined(%ifdef%) %right_comment%%_cc%
)%)%