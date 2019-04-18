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
%#   File: xde-cs.t
%#
%# Author: $author$
%#   Date: 6/10/2008
%#
%#############################################################################
%with(%
%author,%(%else-then(%author%,$author$)%)%,%
%first_year,%(%else-then(%first_year%,%(%else(%year%,%(1988)%,%(%year%)%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%copyright,%(%if(%equal(no,%copyright%)%,,%(%include(%filepath%/%fileprefix%copyright.t)%)%)%)%,%
%open_source,%(%if(%equal(no,%open_source%)%,,yes)%)%,%
%cpp_comments,%(%else-then(%cpp_comments%,%(yes)%)%)%,%
%lcomment,%(%else-then(%lcomment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%rcomment,%(%else-then(%rcomment%,%(%if(%cpp_comments%,%()%,%(*/)%)%)%)%)%,%
%left_comment,%(%else-then(%left_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%right_comment,%(%else-then(%right_comment%,%(%else(%cpp_comments%,%(*/)%)%)%)%)%,%
%first_comment,%(%else-then(%first_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%middle_comment,%(%else-then(%middle_comment%,%(%if(%cpp_comments%,%(//)%,%( *)%)%)%)%)%,%
%last_comment,%(%else-then(%last_comment%,%(%if(%cpp_comments%,%(//)%,%( */)%)%)%)%)%,%
%begin_separator,%(%else-then(%begin_separator%,%(%(%include(%filepath%/%fileprefix%%filetype%-begin-separator.t)%)%)%)%)%,%
%end_separator,%(%else-then(%end_separator%,%(%(%include(%filepath%/%fileprefix%%filetype%-end-separator.t)%)%)%)%)%,%
%left_separator,%(%else-then(%left_separator%,%(%(%include(%filepath%/%fileprefix%%filetype%-left-separator.t)%)%)%)%)%,%
%class_separator,%(%else-then(%class_separator%,%(;)%)%)%,%
%extends_separator,%(%else-then(%extends_separator%,%(%class_separator%)%)%)%,%
%implements_separator,%(%else-then(%implements_separator%,%(%class_separator%)%)%)%,%
%class_file,%(%else-then(%class_file%,%(%equal(class,%file_name_is%)%)%)%)%,%
%class_file,%(%else(%equal(no,%class_file%)%,%(%class_file%)%)%)%,%
%class_filename,%(%if-then(%else-then(%left(%class%,%class_separator%)%,%(%class%)%)%,%(.%fileextension%)%)%)%,%
%file,%(%else-then(%file%,%(%if(%class_file%,%(%class_filename%)%)%)%)%)%,%
%%(%
%%if(%file%,%(%include(%filepath%/%fileprefix%%filetype%-file.t)%)%)%%
%%include(%filepath%/%fileprefix%%filetype%-%filetype%.t)%%
%)%)%