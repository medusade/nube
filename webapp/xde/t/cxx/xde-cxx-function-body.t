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
%#   File: xde-cxx-function-body.t
%#
%# Author: $author$
%#   Date: 10/11/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%statement_is,%(%else-then(%statement_is%,%(%statement%)%)%)%,%
%return_is,%(%else-then(%return_is%,%(%else(%equal(void ,%return_t%)%,%(%return_t%)%)%)%)%)%,%
%return_n,%(%return_prefix%%return_n%%return_suffix%)%,%
%function_body_ifdef_value,%(%else-then(%right(%function_body_ifdef%,:)%,%(;)%)%)%,%
%function_body_ifdef,%(%else-then(%left(%function_body_ifdef%,:)%,%(%function_body_ifdef%)%)%)%,%
%function_body_ifndef_value,%(%else-then(%right(%function_body_ifndef%,:)%,%(;)%)%)%,%
%function_body_ifndef,%(%else-then(%left(%function_body_ifndef%,:)%,%(%function_body_ifndef%)%)%)%,%
%%(%
%%if(%function_body_ifdef%,%(%
%%kk_%#if defined%_kk%%(()%%do(%function_body_ifdef%)%%())%
%if-then(%then-if(%function_body_ifdef_value%,%(%indent%)%)%,%(
)%)%%
%%kk_%#else%_kk% %cc_%%left_comment% defined%(()%%do(%function_body_ifdef%)%%())% %right_comment%%_cc%
)%)%%
%%if(%function_body_ifndef%,%(%
%%kk_%#if !defined%_kk%%(()%%do(%function_body_ifndef%)%%())%
%if-then(%then-if(%function_body_ifndef_value%,%(%indent%)%)%,%(
)%)%%
%%kk_%#else%_kk% %cc_%%left_comment% %do(%function_body_ifndef%)% %right_comment%%_cc%
)%)%%
%%indent%{%if(%return_is%,%(
%indent%    %do(%return_t%)%%do(%return_n%)%%do(%return_v%)%;)%)%%
%%if(%function_ifdef%,%(%include(%filepath%/%fileprefix%cxx-function-ifdef.t)%)%)%%
%%if(%function_ifndef%,%(%include(%filepath%/%fileprefix%cxx-function-ifndef.t)%)%)%%
%%if(%statement_is%,%(
%indent%    %do(%statement%)%;)%)%%if(%return_is%,%(
%indent%    return %do(%return_n%)%;)%)%
%indent%}%
%%if(%function_body_ifndef%,%(
%kk_%#endif%_kk% %cc_%%left_comment% !defined%(()%%do(%function_body_ifndef%)%%())% %right_comment%%_cc%%
%)%)%%
%%if(%function_body_ifdef%,%(
%kk_%#endif%_kk% %cc_%%left_comment% defined%(()%%do(%function_body_ifdef%)%%())% %right_comment%%_cc%%
%)%)%%
%)%)%