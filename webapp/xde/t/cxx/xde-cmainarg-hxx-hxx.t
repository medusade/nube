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
%#   File: xde-cmainarg-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 1/21/2008
%#
%#    $Id$
%#
%# Template for creating XDE derived cMainArg C++ class .hxx file
%#
%#############################################################################
%with(%
%mainarg_short_name,%(%else-then(%mainarg_short_name%,%()%)%)%,%
%mainarg_name,%(%else-then(%mainarg_name%,%(%class_name%)%)%)%,%
%mainarg_description,%(%else-then(%mainarg_description%,%(%Class_name%)%)%)%,%
%mainarg_parameters,%(%else-then(%mainarg_parameters%,%()%)%)%,%
%constructor_parameters,%(const char* shortName="%mainarg_short_name%";const char* name="%mainarg_name%";const char* description="%mainarg_description%";const char* parameters="%mainarg_parameters%")%,%
%construct,%(cExtends%(()%shortName, name, description, parameters%())%)%,%
%%(%
%%include(%filepath%/%fileprefix%c-hxx-hxx.t)%%
%)%)%