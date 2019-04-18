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
%#   File: xde-hxx-constructor.t
%#
%# Author: $author$
%#   Date: 10/11/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%constructor_parameters,%(%else-then(%constructor_parameters%,%(%parameters%)%)%)%,%
%%(
%
%%include(%filepath%/%fileprefix%hxx-constructor-separator.t)%%
%%indent%%constructor_t%%do(%class%)%%if(%constructor_parameters%,%(
%indent%)%)%(%parse(%constructor_parameters%,;,,%(,
%indent% )%,%(%with(%
%v,%(%right(%p%,=)%)%,%
%n,%(%right(%else-then(%left(%p%,=)%,%p%)%, )%%if(%v%,=)%)%,%
%t,%(%left-of-right(%p%, )%%if(%n%, )%)%,%
%%(%do(%t%)%%do(%n%)%%do(%v%)%)%)%)%,p)%%())%%if(%constructor_p%,;,%( 
%indent%%if(%construct%,%(: %parse(%construct%,;,,%(,
%indent%)%,%(%do(%construct%)%)%,construct)%
%indent%)%)%{%if(%constructor_statement%,%(
%indent%    %do(%constructor_statement%)%;)%)%
%indent%})%)%%
%)%)%