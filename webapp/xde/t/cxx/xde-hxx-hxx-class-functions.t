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
%#   File: xde-hxx-hxx-class-functions.t
%#
%# Author: $author$
%#   Date: 5/14/2008
%#
%#############################################################################
%with(%
%functions_p,%(%equal(yes,%function_prototype%)%)%,%
%functions_a,%(%if(%equal(abstract,%functions%)%, = 0)%)%,%
%functions_c,%(%if(%equal(yes,%function_const%)%, const)%)%,%
%functions_t,%(%if-then(%else(%equal(no,%functions%)%,%else(%equal(yes,%functions%)%,%if(%functions_a%,virtual,%functions%)%)%)%, )%)%,%
%parameters,%(%else-then(%left(%function_parameters%,/)%,%(%else(%right(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%_parameters,%(%else-then(%right(%function_parameters%,/)%,%(%else(%left(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%return,%(%else-then(%left(%function_return%,/)%,%(%else(%right(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%_return,%(%else-then(%right(%function_return%,/)%,%(%else(%left(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%return_t,%(%if-then(%left-of-right(%return%, )%, )%)%,%
%_return_t,%(%if-then(%left-of-right(%_return%, )%, )%)%,%
%return_n,%(%right(%else-then(%left(%return%,=)%,%return%)%, )%)%,%
%_return_n,%(%right(%else-then(%left(%_return%,=)%,%_return%)%, )%)%,%
%return_v,%(%then-if(%right(%return%,=)%, = )%)%,%
%_return_v,%(%then-if(%right(%_return%,=)%, = )%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-class-functions.t)%%
%)%)%