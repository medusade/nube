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
%#   File: xde-hxx-class-packed-begin.t
%#
%# Author: $author$
%#   Date: 1/9/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%if(%packed%,%(%
%%_#if_% %_defined_%(_MSC_VER)
%_#pragma_% pack(push,%packed%)
%_#endif_% %cc_%%left_comment% defined(_MSC_VER) %right_comment%%_cc%
%
%)%)%%
%)%)%