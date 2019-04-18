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
%#   File: xde-cxx-function.t
%#
%# Author: $author$
%#   Date: 10/11/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%classns,%(%if-then(%class%,%(::)%)%)%,%
%F,%(%else-then(%F%,%(%toupper(%f%)%)%)%)%,%
%_f,%(%else-then(%_f%,%(%tolower(%f%)%)%)%)%,%
%Function,%(%else-then(%Function%,%(Function)%)%)%,%
%function,%(%prefix%%f%%suffix%)%,%
%_function,%(%tolower(%function%)%)%,%
%%(
%
%%include(%filepath%/%fileprefix%cxx-function-separator.t)%%
%%include(%filepath%/%fileprefix%hxx-function-template.t)%%
%%indent%%do(%return_t%)%%classns%%op%%prefix%%f%%suffix%%
%%if(%parameters%,%(
%indent%)%)%%
%%(()%%
%%parse(%parameters%,%parameters_separator%,,%(,
%indent% )%,%(%with(%
%v,%(%then-if(%right(%p%,=)%,=)%)%,%
%n,%(%right(%else-then(%left(%p%,=)%,%p%)%, )%)%,%
%t,%(%left-of-right(%p%, )%%if(%n%, )%)%,%
%%(%do(%t%)%%do(%n%)%)%)%)%,p)%%
%%())%%
%%if(%functions_p%,%(;)%,%( 
%include(%filepath%/%fileprefix%cxx-function-body.t)%)%)%%
%)%)%