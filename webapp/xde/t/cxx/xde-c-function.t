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
%#   File: xde-c-function.t
%#
%# Author: $author$
%#   Date: 1/26/2009
%#
%#############################################################################
%with(%
%F,%(%else-then(%F%,%(%toupper(%f%)%)%)%)%,%
%_f,%(%else-then(%_f%,%(%tolower(%f%)%)%)%)%,%
%Function,%(%else-then(%Function%,%(Function)%)%)%,%
%function,%(%prefix%%f%%suffix%)%,%
%_function,%(%tolower(%function%)%)%,%
%%(
%
%%include(%filepath%/%fileprefix%hxx-function-separator.t)%%
%%indent%%do(%return_t%)%%function%%
%%if(%parameters%,%(
%indent%)%)%%
%%(()%%
%%parse(%parameters%,;,,%(,
%indent% )%,%(%with(%
%v,%(%then-if(%right(%p%,=)%,=)%)%,%
%n,%(%right(%else-then(%left(%p%,=)%,%(%p%)%)%, )%)%,%
%t,%(%else-then(%left-of-right(%p%, )%,%(%p%)%)%%if(%n%, )%)%,%
%tt,%(%left-of-right(%p%, )%%if(%n%, )%)%,%
%%(%do(%t%)%%do(%n%)%%do(%v%)%)%)%)%,p)%%
%%())%
%indent%{
%with(%
%_indent,%(%indent%)%,%
%indent,%(%indent%%indent_%)%,%
%%(%
%%if(%return_n%,%(%indent%%return_t%%return_n%%return_v%;
)%)%%
%%parse(%function_statement%,;,,,%(%indent%%s%;
)%,s)%%
%%if(%return_n%%return_v%,%(%indent%%_return_% %else-then(%return_n%,%(%return_v%)%)%;
)%)%%
%)%)%%
%%indent%}
%
%)%)%