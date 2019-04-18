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
%#   File: xde-cssl-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 10/18/2007
%#
%#    $Id$
%#
%# Template for creating XDE cSSL classes
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%fileclass,%(%else-then(%fileclass%,%(cextends)%)%)%,%
%fileextends,%(%else-then(%fileextends%,%(cssl)%)%)%,%
%class_name,%(%else-then(%class_name%,%(What)%)%)%,%
%Class_name,%(%else-then(%Class_name%,%(%class_name%)%)%)%,%
%CLASS_NAME,%(%else-then(%CLASS_NAME%,%(%toupper(%Class_name%)%)%)%)%,%
%class_name,%(%else-then(%_Class_name%,%(%tolower(%Class_name%)%)%)%)%,%
%class,%(%else-then(%class%,%(SSL)%)%)%,%
%_class,%(%else-then(%_class%,%(%tolower(%class%)%)%)%)%,%
%implements,%(%else-then(%implements%,%(SSLInterface)%)%)%,%
%extends,%(%else-then(%extends%,%(SSL)%)%)%,%
%class_implements,%(%else-then(%class_implements%,%(%implements%)%)%)%,%
%class_family,%(%else-then(%class_family%,%(%class%)%)%)%,%
%Class_family,%(%else-then(%Class_family%,%(%class_family%)%)%)%,%
%CLASS_FAMILY,%(%else-then(%CLASS_FAMILY%,%(%toupper(%class_family%)%)%)%)%,%
%class_family,%(%tolower(%class_family%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-cxx.t)%
%)%)%