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
%#   File: xde-cs-class.t
%#
%# Author: $author$
%#   Date: 6/12/2008
%#
%#############################################################################
%with(%
%Class_struct,%(%if(%equal(interface,%class_struct%)%,%(Interface)%,%(%if(%equal(struct,%class_struct%)%,%(Struct)%,%(%if(%equal(union,%class_struct%)%,%( Union)%,%( Class)%)%)%)%)%)%)%,%
%Class_indent,%(%if(%equal(interface,%class_struct%)%,%(   )%,%(%if(%equal(struct,%class_struct%)%,%()%,%(%if(%equal(union,%class_struct%)%,%()%,%()%)%)%)%)%)%)%,%
%class_struct,%(%else(%equal(no,%class_struct%)%,%(%kk_%%class_struct%%_kk%)%,%(%kk_%class%_kk%)%)%)%,%
%class_type,%(%else(%equal(no,%class_type%)%,%(%kk_%%class_type%%_kk%)%,%()%)%)%,%
%class_access,%(%else(%equal(no,%class_access%)%,%(%kk_%%class_access%%_kk%)%,%(%kk_%public%_kk%)%)%)%,%
%class,%(%else-then(%class%,%(%default_class%)%)%)%,%
%Class,%(%else-then(%Class%,%(%class%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_Class%,%(%tolower(%Class%)%)%)%)%,%
%extends_access,%(%else(%equal(no,%extends_access%)%,%(%kk_%%extends_access%%_kk%)%,%()%)%)%,%
%extends,%(%else-then(%extends%,%()%)%)%,%
%Extends,%(%else-then(%Extends%,%(%extends%)%)%)%,%
%EXTENDS,%(%else-then(%EXTENDS%,%(%toupper(%Extends%)%)%)%)%,%
%extends,%(%else-then(%_Extends%,%(%tolower(%Extends%)%)%)%)%,%
%implements_access,%(%else(%equal(no,%implements_access%)%,%(%kk_%%implements_access%%_kk%)%,%()%)%)%,%
%implements,%(%else-then(%implements%,%()%)%)%,%
%Implements,%(%else-then(%Implements%,%(%implements%)%)%)%,%
%IMPLEMENTS,%(%else-then(%IMPLEMENTS%,%(%toupper(%Implements%)%)%)%)%,%
%implements,%(%else-then(%_Implements%,%(%tolower(%Implements%)%)%)%)%,%
%constructor_access,%(%else(%equal(no,%constructor_access%)%,%(%kk_%%constructor_access%%_kk%)%)%)%,%
%constructor_type,%(%else(%equal(no,%constructor_type%)%,%(%kk_%%constructor_type%%_kk%)%)%)%,%
%constructor,%(%constructor_access%%constructor_type%)%,%
%%(%
%%include(%filepath%/%fileprefix%%filetype%-class-separator.t)%%
%%if-then(%class_access%,%( )%)%%if-then(%class_type%,%( )%)%%class_struct% %Class%%
%%then-if(%parse(%Implements%,%implements_separator%,,%(,
  )%,,%(%
%%kk_%virtual%_kk% %if-then(%implements_access%,%( )%)%%Implements%%
%)%,Implements)%%
%%if(%and(%Implements%,%Extends%)%,%(,
  )%)%%
%%parse(%Extends%,%extends_separator%,,%(,
  )%,,%(%
%%if-then(%extends_access%,%( )%)%%Extends%%
%)%,Extends)%,%(
: )%)%
{
%with(indent,%(%indent%    )%,%(%
%%if(%constructor%,%(%
%%include(%filepath%/%fileprefix%%filetype%-constructor.t)%%
%)%)%%
%)%)%};
%
%)%)%