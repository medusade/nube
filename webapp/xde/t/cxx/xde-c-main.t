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
%#   File: xde-c-main.t
%#
%# Author: $author$
%#   Date: 9/18/2008
%#
%#############################################################################
%with(%
%function,%(main)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-function-separator.t)%%
%%_int_% %_main_%
%(()%%_int_% argc,
 %_const_% %_char_%** argv,
 %_const_% %_char_%** env%())%
{
    %_int_% err = 0;
%parse(%main_statement%,;,,,%(%
%    %do(%s%)%;
%
%)%,s)%%
%    %_return_% err;
}
%
%)%)%