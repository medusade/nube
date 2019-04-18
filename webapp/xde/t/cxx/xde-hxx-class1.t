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
%#   File: xde-hxx-class.t
%#
%# Author: $author$
%#   Date: 8/25/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%do(%begin_separator%)%%
%%do(%left_separator%)%  Class: %class%
%do(%left_separator%)%
%do(%left_separator%)% Author: %author%
%do(%left_separator%)%   Date: %date%
%do(%end_separator%)%%
%%if(%template%,%(%
%%indent%template
%indent%<%parse(%template%,;,,%(,
%indent% )%)%>
 
)%)%%
%%indent%%struct% %interface%%class%%
%%if(%is%%implements%,%(
%indent%: %parse(%implements%,;,%(virtual %if-then(%implements_access%, )%)%,%(,
%indent%  )%)%%if(%is%,%(%if(%implements%,%(,
%indent%  )%)%%parse(%is%,;,%(%if-then(%is_access%, )%)%,%(,
%indent%  )%)%)%)%
)%,%(
)%)%%
%%indent%{%
%%with(indent,%(%indent%    )%,%(%
%%if(%access%,%(
%access%:)%)%%
%%if(%implements%,%(
%indent%typedef %if-then(%else-then(%right(%implements%,;)%,%implements%)%, )%%typedef_cimplements%;)%)%%
%%if(%is%,%(
%indent%typedef %if-then(%else-then(%right(%is%,;)%,%is%)%, )%%typedef_cis%;)%)%%
%%if(%as%,%(
%indent%typedef %if-then(%else-then(%right(%as%,;)%,%as%)%, )%%typedef_cas%;)%)%%
%%else(%equal(no,%constructor%)%,%(%
%%include(%filepath%/%fileprefix%constructor-hxx.t)%)%)%%
%%else(%equal(no,%destructor%)%,%(%
%%include(%filepath%/%fileprefix%destructor-hxx.t)%)%)%%
%%if(%functions%,%(%parse(%function_name%,;,,,%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%,f)%)%)%%
%%
%%if(%setget%,%(%parse(%function_name%,;,,,%(%
%%with(%
%return_suffix,%(%if(%return_name_suffix%,%(%f%)%)%)%,%
%prefix,%(%set%%prefix%)%,%
%functions_t,%(%setget_t%)%,%
%functions_a,%(%setget_a%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%%with(%
%return_suffix,%(%if(%return_name_suffix%,%(%f%)%)%)%,%
%prefix,%(%get%%prefix%)%,%
%functions_t,%(%setget_t%)%,%
%functions_a,%(%setget_a%)%,%
%functions_c,%( const)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%)%,f)%)%)%%
%%
%%if(%doundo%,%(%parse(%function_name%,;,,,%(%
%%with(%
%prefix,%(%prefix%%do%)%,%
%functions_t,%(%doundo_t%)%,%
%functions_a,%(%doundo_a%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%%with(%
%prefix,%(%prefix%%undo%)%,%
%functions_t,%(%doundo_t%)%,%
%functions_a,%(%doundo_a%)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%)%,f)%)%)%%
%%
%%if(%operators%,%(%parse(%function_name%,;,,,%(%
%%with(%
%Function,%(Operator)%,%
%op,%(operator )%,%
%functions_t,%(%operators_t%)%,%
%functions_a,%(%operators_a%)%,%
%parameters,%(%_parameters%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%)%,f)%)%)%%
%%
%)%)%%
%
%indent%};%
%)%)%