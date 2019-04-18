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
%#   File: xde-cxobject-cxx-cxx.t
%#
%# Author: $author$
%#   Date: 4/11/2008
%#
%#    $Id$
%#
%# Template for creating XDE derived cXObject C++ class .cxx file
%#
%#############################################################################
%with(%
%%(%
%%include(%filepath%/%fileprefix%cxx-cxx-includes.t)%%
%%_#include_% "%_class%.%fileheaderextension%"
%cc_%/**
 **********************************************************************
 *  Class: %class%
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */%_cc%
%
%)%)%