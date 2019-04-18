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
%#   File: xde-derived-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 11/4/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived C++ class .hxx file
%#
%#############################################################################
%with(%
%implements,%()%,%
%extends,%(c%Extends_name%%class%)%,%
%class,%(c%Class_name%%class%)%,%
%%(%
%#include "c%extends_name%%_class%.hxx"
%
%%do(%begin_separator%)%%
%%do(%left_separator%)%  Class: %class%
%do(%left_separator%)%
%do(%left_separator%)% Author: %author%
%do(%left_separator%)%   Date: %date%
%do(%end_separator%)%%
%class %class%%
%%if(%implements%%extends%,%(
: %if(%implements%,%(virtual %implements_access%%implements%%
%%if(%extends%,%(,
)%)%)%)%%
%%if(%extends%,%(%extends_access%%extends%)%)%)%)%
{
public:
%
%%apply(indent,%indent%    ,%(%
%%if(%extends%,%(%indent%typedef %extends% cIs, cExtends;
)%)%%
%%if(%class%,%(%indent%typedef %class% cAs, cDerives;
)%)%%
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
%};
%
%)%)%%
%)%)%