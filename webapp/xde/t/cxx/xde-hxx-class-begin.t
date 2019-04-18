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
%#   File: xde-hxx-class-begin.t
%#
%# Author: $author$
%#   Date: 1/6/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%is_separator,%(%else-then(%is_separator%,%(;)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-class-packed-begin.t)%%
%%indent%%_Struct_typedef_%%_Struct_% %interface%%do(%class%)%%
%%if(%is%%implements%,%(
%indent%: %parse(%implements%,%is_separator%,%(virtual %if-then(%implements_access%, )%)%,%(,
%indent%  )%,%(%do(%implements%)%)%,implements)%%if(%is%,%(%if(%implements%,%(,
%indent%  )%)%%parse(%is%,%is_separator%,%(%if-then(%is_access%, )%)%,%(,
%indent%  )%,%(%do(%is%)%)%,is)%)%)%
)%,%(
)%)%%
%%indent%{%
%%with(indent,%(%indent%    )%,%(%
%%if(%access%,%(
%access%:)%)%%
%%if(%implements%,%(
%indent%%_typedef_% %if-then(%else-then(%right(%implements%,%is_separator%)%,%implements%)%, )%%typedef_cimplements%;)%)%%
%%if(%is%,%(
%indent%%_typedef_% %if-then(%else-then(%right(%is%,%is_separator%)%,%is%)%, )%%typedef_cis%;)%)%%
%%if(%as%,%(
%indent%%_typedef_% %if-then(%else-then(%right(%as%,%is_separator%)%,%as%)%, )%%typedef_cas%;)%)%%
%)%)%%
%)%)%