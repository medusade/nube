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
%#   File: xde-java-function-separator.t
%#
%# Author: $author$
%#   Date: 7/14/2008
%#
%#############################################################################
%with(%
%%(%
%%include(%filepath%/%fileprefix%java-begin-separator.t)%%
%%do(%left_separator%)% %Function:% %func%
%do(%left_separator%)%
%do(%left_separator%)%   %Author:% %author%
%do(%left_separator%)%     %Date:% %date%
%
%%include(%filepath%/%fileprefix%java-end-separator.t)%%
%)%)%