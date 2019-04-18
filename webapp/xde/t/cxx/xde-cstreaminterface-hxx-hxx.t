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
%#   File: xde-cstreaminterface-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 11/15/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived cStreamInterface C++ class .hxx file
%#
%#############################################################################
%with(%
%class_base,%(%else-then(%class_base%,%(%class%)%)%)%,%
%Class_base,%(%else-then(%Class_base%,%(%class_base%)%)%)%,%
%CLASS_BASE,%(%else-then(%CLASS_BASE%,%(%toupper(%Class_base%)%)%)%)%,%
%class_base,%(%else-then(%_Class_base%,%(%tolower(%Class_base%)%)%)%)%,%
%class,%(c%Class_name%%Class_base%)%,%
%%(%
%%first_comment%
%middle_comment% %Class_name%
%last_comment%

%with(%
%class,%(%class%Interface)%,%
%%(%include(%filepath%/%fileprefix%cxx-class-separator.t)%)%)%%
%class c_INTERFACE_CLASS %class%Interface
: virtual public c%Class_base%InterfaceT
  <%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, 
   c%Class_name%ReaderInterface, c%Class_name%WriterInterface>
{
public:
    typedef c%Class_base%InterfaceT
    <%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, 
     c%Class_name%ReaderInterface, c%Class_name%WriterInterface> cImplements;
};

%with(%
%class,%(%class%Implement)%,%
%%(%include(%filepath%/%fileprefix%cxx-class-separator.t)%)%)%%
%class %class%Implement
: virtual public c%Class_base%ImplementT
  <%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, 
   %class%Interface, c%Class_name%ReaderImplement, c%Class_name%WriterImplement>
{
public:
    typedef c%Class_base%ImplementT
    <%Class_name%, TSIZE, TLENGTH, UNDEFINED_LENGTH, 
     %class%Interface, c%Class_name%ReaderImplement, c%Class_name%WriterImplement> cImplements;
};
%
%)%)%