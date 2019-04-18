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
%#   File: xde-derived-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 11/4/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived C++ class .hxx/.cxx file
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%fileclass,%(%else-then(%fileclass%,%(cextends)%)%)%,%
%filederives,%(%else-then(%filederives%,%(derived)%)%)%,%
%fileextends,%(%else-then(%fileextends%,%(%filederives%)%)%)%,%
%class_name,%(%else-then(%class_name%,%(What)%)%)%,%
%class,%(%else-then(%class%,%(Class)%)%)%,%
%implements_access,%(%else-then(%implements_access%,%(public )%)%)%,%
%extends_access,%(%else-then(%extends_access%,%(public )%)%)%,%
%class_base,%(%else-then(%class_base%,%(%class%)%)%)%,%
%Class_base,%(%else-then(%Class_base%,%(%class_base%)%)%)%,%
%CLASS_BASE,%(%else-then(%CLASS_BASE%,%(%toupper(%Class_base%)%)%)%)%,%
%class_base,%(%else-then(%_Class_base%,%(%tolower(%Class_base%)%)%)%)%,%
%implements_base,%(%else-then(%implements_base%,%(%else-then(%implements%,%(%class%)%)%)%)%)%,%
%Implements_base,%(%else-then(%Implements_base%,%(%implements_base%)%)%)%,%
%IMPLEMENTS_BASE,%(%else-then(%IMPLEMENTS_BASE%,%(%toupper(%Implements_base%)%)%)%)%,%
%implements_base,%(%else-then(%_Implements_base%,%(%tolower(%Implements_base%)%)%)%)%,%
%extends_base,%(%else-then(%extends_base%,%(%else-then(%extends%,%(%class%)%)%)%)%)%,%
%Extends_base,%(%else-then(%Extends_base%,%(%extends_base%)%)%)%,%
%EXTENDS_BASE,%(%else-then(%EXTENDS_BASE%,%(%toupper(%Extends_base%)%)%)%)%,%
%extends_base,%(%else-then(%_Extends_base%,%(%tolower(%Extends_base%)%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-cxx.t)%
%)%)%