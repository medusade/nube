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
%#   File: xde-crsainterface-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 12/29/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived cRSAInterface C++ class .hxx/.cxx file
%#
%#############################################################################
%with(%
%i,%(%else-then(%_I%,%(%tolower(%I%)%)%)%)%,%
%_interface,%(%else-then(%_Interface%,%(%tolower(%Interface%)%)%)%)%,%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%interface,%(%else-then(%class_interface%,%(interface)%)%)%,%
%class,%(%else-then(%class%,%(%I%%class_name%%Interface%)%)%)%,%
%implements,%(%else-then(%implements%,%(%I%%class_implements%%Interface%)%)%)%,%
%include,%(%else-then(%include%,%(%i%%class_implements%%_interface%.hxx)%)%)%,%
%file,%(%else-then(%file%,%(%class%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%crsa-hxx-cxx.t)%%
%)%)%