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
%#   File: xde-copyright.t
%#
%# Author: $author$
%#   Date: 6/26/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%author,%(%else-then(%author%,$author$)%)%,%
%organization,%(%else-then(%organization%,%author%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%first_year,%(%else-then(%first_year%,%(1988)%)%)%,%
%first_year,%(%else(%equal(%first_year%,%year%)%,%(%first_year%-)%)%)%,%
%copyright_year,%(%else-then(%copyright_year%,%(%first_year%%year%)%)%)%,%
%copyright_author,%(%else-then(%copyright_author%,%organization%)%)%,%
%%(%if(%equal(no,%copyright%)%,,%(Copyright (c) %do(%copyright_year%)% %copyright_author%)%)%)%)%