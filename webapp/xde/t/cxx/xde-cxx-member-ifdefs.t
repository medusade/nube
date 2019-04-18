%#############################################################################
%# Copyright (c) 1988-2009 $author$
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
%#   File: xde-cxx-member-ifdefs.t
%#
%# Author: $author$
%#   Date: 3/11/2009
%#
%#############################################################################
%with(%
%class,%(%else-then(%class%,%(class)%)%)%,%
%Class,%(%else-then(%Class%,%(%class%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_Class%,%(%tolower(%Class%)%)%)%)%,%
%%(%
%
/**
 **********************************************************************
 * %class%interface.hxx
 **********************************************************************
 */
#if !defined(_%CLASS%INTERFACE_HXX) || defined(%CLASS%INTERFACE_MEMBERS_ONLY)
#if !defined(_%CLASS%INTERFACE_HXX) && !defined(%CLASS%INTERFACE_MEMBERS_ONLY)
#define _%CLASS%INTERFACE_HXX
#endif /* !defined(_%CLASS%INTERFACE_HXX) && !defined(%CLASS%INTERFACE_MEMBERS_ONLY) */

#if !defined(%CLASS%INTERFACE_MEMBERS_ONLY)
/* %Class% interface definition
 */
class c_INTERFACE_CLASS %Class%Interface;

#undef CDB_CLASS
#define CDB_CLASS "%Class%Interface"
class %Class%Interface
{
public:
#else /* !defined(%CLASS%INTERFACE_MEMBERS_ONLY) */
#endif /* !defined(%CLASS%INTERFACE_MEMBERS_ONLY) */

#if !defined(%CLASS%INTERFACE_MEMBERS_ONLY) 
/* include %Class% member functions interface
 */
#define %CLASS%_MEMBERS_ONLY
#define %CLASS%_MEMBER_FUNCS_INTERFACE
#include "%class%.hxx"
#undef %CLASS%_MEMBER_FUNCS_INTERFACE
#undef %CLASS%_MEMBERS_ONLY
};
#undef CDB_CLASS

/* %Class% implement definition
 */
class c_IMPLEMENT_CLASS %Class%Implement;
class c_IMPLEMENT_CLASS %Class%Implement
: virtual public %Class%Interface
{
public:
/* include %Class% interface member definitions
 */
#define %CLASS%INTERFACE_MEMBERS_ONLY
#include "%class%interface.hxx"
#undef %CLASS%INTERFACE_MEMBERS_ONLY

/* include %Class% member functions implement
 */
#define %CLASS%_MEMBERS_ONLY
#define %CLASS%_MEMBER_FUNCS_IMPLEMENT
#include "%class%.hxx"
#undef %CLASS%_MEMBER_FUNCS_IMPLEMENT
#undef %CLASS%_MEMBERS_ONLY
};
#else /* !defined(%CLASS%INTERFACE_MEMBERS_ONLY) */
#endif /* !defined(%CLASS%INTERFACE_MEMBERS_ONLY) */

#endif /* !defined(_%CLASS%INTERFACE_HXX) || defined(%CLASS%INTERFACE_MEMBERS_ONLY) */

/**
 **********************************************************************
 * %class%.hxx
 **********************************************************************
 */
#if !defined(_%CLASS%_HXX) || defined(%CLASS%_MEMBERS_ONLY)
#if !defined(_%CLASS%_HXX) && !defined(%CLASS%_MEMBERS_ONLY)
#define _%CLASS%_HXX
#endif /* !defined(_%CLASS%_HXX) && !defined(%CLASS%_MEMBERS_ONLY) */

#if !defined(%CLASS%_MEMBERS_ONLY)
/* %Class% definition
 */
class %Class%;

#undef CDB_CLASS
#define CDB_CLASS "%Class%"
class %Class%
{
public:
/* include %Class% interface member definitions
 */
#define %CLASS%INTERFACE_MEMBERS_ONLY
#include "%class%interface.hxx"
#undef %CLASS%INTERFACE_MEMBERS_ONLY

#else /* !defined(%CLASS%_MEMBERS_ONLY) */
#endif /* !defined(%CLASS%_MEMBERS_ONLY) */

#if !defined(%CLASS%_MEMBERS_ONLY) 
};
#undef CDB_CLASS
#else /* !defined(%CLASS%_MEMBERS_ONLY) */
#endif /* !defined(%CLASS%_MEMBERS_ONLY) */

#endif /* !defined(_%CLASS%_HXX) || defined(%CLASS%_MEMBERS_ONLY) */

/**
 **********************************************************************
 * %class%.cxx
 **********************************************************************
 */
#if defined(%CLASS%_INSTANCE_TEST) 
%Class% g_%Class%;
#endif /* defined(%CLASS%_INSTANCE_TEST) */

%
%)%)%