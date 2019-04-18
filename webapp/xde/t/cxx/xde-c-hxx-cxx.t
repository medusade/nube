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
%#   File: xde-c-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 11/14/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived c C++ class .hxx/.cxx file
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%filetype,%(%if(%equal(cpp,%filetype%)%,%(cxx)%,%(%if(%equal(hpp,%filetype%)%,%(hxx)%,%(%else-then(%equal(cxx,%filetype%)%,%(%else-then(%equal(hxx,%filetype%)%,%(%else-then(%equal(c,%filetype%)%,%(h)%)%)%)%)%)%)%)%)%)%)%,%
%filetype_filetype,%(%else-then(%filetype_filetype%,%(%filetype%-%filetype%)%)%)%,%
%author,%(%else-then(%author%,$author$)%)%,%
%date,%(%date()%)%,%
%year,%(%year()%)%,%
%Class_name,%(%else-then(%Class_name%,%(%class_name%)%)%)%,%
%CLASS_NAME,%(%else-then(%CLASS_NAME%,%(%toupper(%Class_name%)%)%)%)%,%
%class_name,%(%else-then(%_class_name%,%(%tolower(%class_name%)%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%c-%filetype_filetype%.t)%
%)%)%