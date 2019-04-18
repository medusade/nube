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
%#   File: xde-cnamelist-hxx-hxx.t
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
 *  Class: c%Class_name%Item
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */
class c%Class_name%Item
: public cNameItemT%lt%c%Class_name%Item,char,cBase%gt%
{
public:
    typedef cNameItemT%lt%c%Class_name%Item,char,cBase%gt% cExtends;
    c%Class_name%Item(const tChar* name)
    : cExtends(name) 
    {Add2List();}
    void Add2List();
};
/**
 **********************************************************************
 *  Class: c%Class_name%List
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */
class c%Class_name%List
: public cNameListT%lt%char,c%Class_name%Item,cBase%gt%
{
public:
    typedef cNameListT%lt%char,c%Class_name%Item,cBase%gt% cExtends;
    static c%Class_name%List m_instance;
};
%
%)%)%