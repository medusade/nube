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
%#   File: xde-cxx-destructor-separator.t
%#
%# Author: $author$
%#   Date: 10/11/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%do(%begin_separator%)%%
%%do(%left_separator%)% Destructor: %do(%class%)%::~%do(%class%)%
%do(%left_separator%)%
%do(%left_separator%)%     Author: %author%
%do(%left_separator%)%       Date: %date%
%do(%end_separator%)%%
%)%)%