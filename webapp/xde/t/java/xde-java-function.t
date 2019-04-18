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
%#   File: xde-java-function.t
%#
%# Author: $author$
%#   Date: 7/14/2008
%#
%#############################################################################
%with(%
%function_separator,%(%else-then(%function_separator%,%(;)%)%)%,%
%function_abstract,%(%equal(abstract,%function_type%)%)%,%
%function_type,%(%if(%function_type%,%(%do(%%_%function_type%_%%)% )%)%)%,%
%%(%
%%parse(%function_name%,;,,,%(
%
%%with(%
%func,%(%if(%equal(%_main_%,%do(%func%)%)%,%(main)%,%(%func%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%java-function-separator.t)%%
%)%)%%
%%indent%%do(%%_%function%_%%)% %function_type%%function_return% %func%%if(%function_parameters%,%(
%indent%%(()%%
%%parse(%function_parameters%,;,,%(,
%indent% )%,%(%with(%
%param_type,%(%left(%param%, )%)%,%
%param_name,%(%right(%param%, )%)%,%
%%(%
%%do(%param_type%)% %param_name%%
%)%)%)%,param)%%
%%())%)%,%(%(()%%())%)%)%%if(%function_abstract%,%(;)%,%(
%indent%{%if(%function_return_variable%,%(
%indent%%indent_%%function_return% %function_return_variable%%
%%if(%function_return_value%,%( = %function_return_value%)%)%;)%)%%
%%if(%function_body%,%(%parse(%function_body%,;,%(
%indent%%indent_%)%,;,%(%statement%)%,statement)%;)%)%%
%%if(%function_return_variable%%function_return_value%,%(
%indent%%indent_%%_return_% %else-then(%function_return_variable%,%(%function_return_value%)%)%;)%)%
%indent%})%)%%
%)%,func)%%
%)%)%