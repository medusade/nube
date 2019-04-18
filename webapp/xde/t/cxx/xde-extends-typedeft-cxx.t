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
%#   File: xde-extends-typedeft-cxx.t
%#
%# Author: $author$
%#   Date: 3/1/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%typedef_template,%(%else-then(%typedef_template%,%(%extends%)%)%)%,%
%typedef_template_parameters,%(%else-then(%typedef_template_parameters%,%(%typedef%)%)%)%,%
%typedef_template_instance,%(%else-then(%typedef_template_instance%,%(%class%)%)%)%,%
%typedefname,%(%typedef_template_instance%)%,%
%typedeftype,%(%typedef_template%T%lt%%parse(%typedef_template_parameters%,;,,%(, )%)%%gt%)%,%
%typedef,%(%typedefname%:%typedeftype%)%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-typedef.t)%%
%)%)%