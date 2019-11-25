%########################################################################
%# Copyright (c) 1988-2019 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: t-file.t
%#
%# Author: $author$
%#   Date: 11/25/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_organization,%(%else-then(%is_organization%,%()%)%)%,%
%organization,%(%else-then(%organization%,%($organization$)%)%)%,%
%Organization,%(%else-then(%Organization%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%is_author,%(%else-then(%is_author%,%()%)%)%,%
%author,%(%else-then(%author%,%($author$)%)%)%,%
%Author,%(%else-then(%Author%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%()%)%)%,%
%file,%(%else-then(%file%,%(t)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%()%)%)%,%
%base,%(%else-then(%base%,%(%filebase(%File%)%)%)%)%,%
%Base,%(%else-then(%Base%,%(%base%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_Base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%()%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%File%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%%(%
%%%########################################################################
%%# Copyright (c) 1988-%year()% %Organization%
%%#
%%# This software is provided by the author and contributors ``as is'' 
%%# and any express or implied warranties, including, but not limited to, 
%%# the implied warranties of merchantability and fitness for a particular 
%%# purpose are disclaimed. In no event shall the author or contributors 
%%# be liable for any direct, indirect, incidental, special, exemplary, 
%%# or consequential damages (including, but not limited to, procurement 
%%# of substitute goods or services; loss of use, data, or profits; or 
%%# business interruption) however caused and on any theory of liability, 
%%# whether in contract, strict liability, or tort (including negligence 
%%# or otherwise) arising in any way out of the use of this software, 
%%# even if advised of the possibility of such damage.
%%#
%%#   File: %Base%.%Extension%
%%#
%%# Author: %Author%
%%#   Date: %date()%
%%########################################################################
%
%)%)%