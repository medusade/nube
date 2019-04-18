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
%#   File: xde-cmain-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 11/4/2007
%#
%#    $Id$
%#
%# Template for deriving XDE cMain C++ .hxx/.cxx file
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%filederives,%(%else-then(%filederives%,%(cmain)%)%)%,%
%class_base,%(%else-then(%class_base%,%(Main)%)%)%,%
%class_extends,%(%else-then(%class_extends%,%(cMain)%)%)%,%
%constructor,%(yes)%,%
%functions,%(virtual)%,%
%function_name,%(Run)%,%
%function_return,%(int err=0)%,%
%function_parameters,%(int argc;const char** argv;const char** env)%,%
%%(%
%%include(%filepath%/%fileprefix%derives-hxx-cxx.t)%%
%)%)%