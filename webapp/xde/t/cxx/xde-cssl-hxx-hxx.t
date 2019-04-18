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
%#   File: xde-cssl-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 10/18/2007
%#
%#    $Id$
%#
%# Template for creating Derived C++ cSSL class .hxx file
%#
%#############################################################################
%with(%
%class,%(c%class%%Class_name%)%,%
%implements,%()%,%
%extends,%()%,%
%%(%
%#include "cbytestream.hxx"
%
%%do(%begin_separator%)%%
%%do(%left_separator%)%  Class: %class%
%do(%left_separator%)%
%do(%left_separator%)% Author: %author%
%do(%left_separator%)%   Date: %date%
%do(%end_separator%)%%
%class %class%
{
public:
%
%%apply(indent,%indent%    ,%(%
%%do(%begin_separator%)%%
%%do(%left_separator%)% Constructor: %class%
%do(%left_separator%)%
%do(%left_separator%)%      Author: %author%
%do(%left_separator%)%        Date: %date%
%do(%end_separator%)%%
%    %class%()
    {
    }
%
%%do(%begin_separator%)%%
%%do(%left_separator%)% Function: Read
%do(%left_separator%)%
%do(%left_separator%)%   Author: %author%
%do(%left_separator%)%     Date: %date%
%do(%end_separator%)%%
%    int Read(cBYTEStreamInterface &stream) 
    {
        int length = -e_ERROR_FAILED;
        return length;
    }
%
%%do(%begin_separator%)%%
%%do(%left_separator%)% Function: Write
%do(%left_separator%)%
%do(%left_separator%)%   Author: %author%
%do(%left_separator%)%     Date: %date%
%do(%end_separator%)%%
%    int Write(cBYTEStreamInterface &stream) 
    {
        int length = -e_ERROR_FAILED;
        return length;
    }
%
%%do(%begin_separator%)%%
%%do(%left_separator%)% Function: Sizeof
%do(%left_separator%)%
%do(%left_separator%)%   Author: %author%
%do(%left_separator%)%     Date: %date%
%do(%end_separator%)%%
%    int Sizeof() const 
    {
        int size = 0;
        return size;
    }
%
%};
%
%)%)%%
%)%)%