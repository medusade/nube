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
%#   File: xde-cnamelist-cxx-cxx.t
%#
%# Author: $author$
%#   Date: 3/26/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%
/**
 **********************************************************************
 *  Class: c%Class_name%List
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */
c%Class_name%List c%Class_name%List::m_instance;
template%lt%%gt%
c%Class_name%Item* c%Class_name%List::cExtends::cExtends::m_firstItem = 0;
template%lt%%gt%
c%Class_name%Item* c%Class_name%List::cExtends::cExtends::m_lastItem = 0;
void c%Class_name%Item::Add2List()
{c%Class_name%List::m_instance.AddItem(*this);}
%
%)%)%