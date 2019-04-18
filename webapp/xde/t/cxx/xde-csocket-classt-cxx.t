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
%#   File: xde-csocket-classt-cxx.t
%#
%# Author: $author$
%#   Date: 2/19/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%with(%
%setget_name,%(New/Delete)%,%
%doundo,%(virtual)%,%
%doundo_p,%(%equal(yes,%function_prototype%)%)%,%
%doundo_t,%(%if-then(%else(%equal(no,%doundo%)%,%else(%equal(yes,%doundo%)%,%if(%doundo_a%,virtual,%doundo%)%)%)%, )%)%,%
%do,%(%else-then(%left(%setget_name%,/)%,%else-then(%setget_name%,Do)%)%)%,%
%undo,%(%else-then(%right(%setget_name%,/)%,%else-then(%setget_name%,Undo)%)%)%,%
%functions,%()%,%
%functions_p,%(%equal(yes,%function_prototype%)%)%,%
%functions_t,%(%if-then(%else(%equal(no,%functions%)%,%else(%equal(yes,%functions%)%,%if(%functions_a%,virtual,%functions%)%)%)%, )%)%,%
%function_name,%(Instance)%,%
%function_return,%(c%typename%Socket* instance=new_c%typename%Socket()/eError error=e_ERROR_NOT_IMPLEMENTED)%,%
%function_parameters,%(eError& error/)%,%
%function_statement,%(error = e_ERROR_NONE/delete this)%,%
%statement,%(%else-then(%left(%function_statement%,/)%,%(%else(%right(%function_statement%,/)%,%(%function_statement%)%)%)%)%)%,%
%_statement,%(%else-then(%right(%function_statement%,/)%,%(%else(%left(%function_statement%,/)%,%(%function_statement%)%)%)%)%)%,%
%return,%(%else-then(%left(%function_return%,/)%,%(%else(%right(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%_return,%(%else-then(%right(%function_return%,/)%,%(%else(%left(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%return_t,%(%if-then(%left-of-right(%return%, )%, )%)%,%
%_return_t,%(%if-then(%left-of-right(%_return%, )%, )%)%,%
%return_n,%(%right(%else-then(%left(%return%,=)%,%return%)%, )%)%,%
%_return_n,%(%right(%else-then(%left(%_return%,=)%,%_return%)%, )%)%,%
%return_v,%(%then-if(%right(%return%,=)%, = )%)%,%
%_return_v,%(%then-if(%right(%_return%,=)%, = )%)%,%
%parameters,%(%else-then(%left(%function_parameters%,/)%,%(%else(%right(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%_parameters,%(%else-then(%right(%function_parameters%,/)%,%(%else(%left(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%parameter,%(%else-then(%left(%parameters%,;)%,%parameters%)%)%,%
%_parameter,%(%else-then(%left(%_parameters%,;)%,%_parameters%)%)%,%
%parameter_t,%(%if-then(%left-of-right(%parameter%, )%, )%)%,%
%_parameter_t,%(%if-then(%left-of-right(%_parameter%, )%, )%)%,%
%parameter_n,%(%right(%else-then(%left(%parameter%,=)%,%parameter%)%, )%)%,%
%_parameter_n,%(%right(%else-then(%left(%_parameter%,=)%,%_parameter%)%, )%)%,%
%parameter_v,%(%then-if(%right(%parameter%,=)%, = )%)%,%
%_parameter_v,%(%then-if(%right(%_parameter%,=)%, = )%)%,%
%access,%(%else(%equal(no,%access%)%,%(%else-then(%access%,%(public)%)%)%)%)%,%
%is_access,%(%else(%equal(no,%is_access%)%,%(%else-then(%is_access%,%(public)%)%)%)%)%,%
%implements_access,%(%else(%equal(no,%implements_access%)%,%(%else-then(%implements_access%,%(public)%)%)%)%)%,%
%class,%(c%typename%Socket)%,%
%is,%(cSocketT
%lt%c%typename%Socket, %typename%, TSIZE, TLENGTH, UNDEFINED_LENGTH, 
c%typename%SocketReference, c%typename%SocketInterface, c%typename%SocketStream%gt%)%,%
%is_separator,%(|)%,%
%%(%
%%include(%filepath%/%fileprefix%%filetype%-class.t)%%
%)%)%%
%)%)%