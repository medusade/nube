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
%#   File: xde-implements-classt-cxx.t
%#
%# Author: $author$
%#   Date: 2/25/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%class,%(%implements%)%,%
%CLASS,%(%toupper(%class%)%)%,%
%_class,%(%tolower(%class%)%)%,%
%implements,%(%class%T%lt%%parse(%typedef%,;,,%(,)%)%%gt%)%,%
%is_separator,%(|)%,%
%interface,%(interface)%,%
%interface,%(%else(%else(%interface%,no)%%equal(no,%interface%)%,%(%if(%equal(export,%interface%)%,%(%EXPORT_CLASS% )%,%(%INTERFACE_CLASS% )%)%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%%filetype%-class.t)%%
%)%)%