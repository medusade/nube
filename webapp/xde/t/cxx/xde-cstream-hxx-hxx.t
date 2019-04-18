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
%#   File: xde-cstream-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 11/17/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived cStream C++ class .hxx file
%#
%#############################################################################
%with(%
%class,%(c%Class_name%%Class_base%)%,%
%implements,%(c%Implements_base%)%,%
%extends,%(c%Extends_base%)%,%
%%(%
%%with(%
%class,%(%class%)%,%
%%(%include(%filepath%/%fileprefix%cxx-class-separator.t)%)%)%%
%class %class%
: public %extends%
{
public:
    typedef %extends% cExtends;
    typedef %class% cDerives;

%with(%
%indent,%(%indent%    )%,%
%%(%include(%filepath%/%fileprefix%hxx-constructor-separator.t)%)%)%
    %class%()
    {
    }
%with(%
%function,%(Read)%,%
%indent,%(%indent%    )%,%
%%(%include(%filepath%/%fileprefix%hxx-function-separator.t)%)%)%    
    virtual int Read(%Class_name%* buffer, int size=-1)
    {
        int result = -e_ERROR_FAILED;
        return result;
    }
%with(%
%function,%(Write)%,%
%indent,%(%indent%    )%,%
%%(%include(%filepath%/%fileprefix%hxx-function-separator.t)%)%)%    
    virtual int Write(const %Class_name%* buffer, int size)
    {
        int result = -e_ERROR_FAILED;
        return result;
    }
};
%
%)%)%