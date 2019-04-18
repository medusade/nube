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
%#   File: xde-hxx-cxx-enum.t
%#
%# Author: $author$
%#   Date: 10/18/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%enum_enum,%(%else-then(%enum_enum%,%(enum)%)%)%,%
%enum_name_prefix,%(%else-then(%enum_name_prefix%,%(NAME_)%)%)%,%
%enum_value_prefix,%(%else-then(%enum_value_prefix%,%(VALUE_)%)%)%,%
%enum_names_suffix,%(%else-then(%enum_names_suffix%,%(NAME)%)%)%,%
%enum_values_suffix,%(%else-then(%enum_values_suffix%,%(VALUE)%)%)%,%
%enum_first_suffix,%(%else-then(%enum_first_suffix%,%(FIRST)%)%)%,%
%enum_next_suffix,%(%else-then(%enum_next_suffix%,%(NEXT)%)%)%,%
%enum_last_suffix,%(%else-then(%enum_last_suffix%,%(LAST)%)%)%,%
%enum_count_suffix,%(%else-then(%enum_count_suffix%,%(COUNT)%)%)%,%
%enum_type,%(%else-then(%enum_type%,%(int)%)%)%,%
%e,%(%else-then(%e%,%(anonymous)%)%)%,%
%e_type,%(%else(%equal(anonymous,%e%)%,%(%e%)%,%(%enum_type%)%)%)%,%
%e,%(%else(%equal(anonymous,%e%)%,%( %e%)%)%)%,%
%typedef_e,%(%if(%h%%c%,%(%if(%e%,%(%kk_%typedef%_kk% )%)%)%)%)%,%
%e_typedef,%(%if(%h%%c%,%(%if(%e%,%( %e%)%)%)%)%)%,%
%e_list,%(%else-then(%e_list%,%(%do(%enum_name%)%)%)%)%,%
%e_prefix,%(%else-then(%e_prefix%,%(%enum_prefix%)%)%)%,%
%e_suffix,%(%else-then(%e_suffix%,%(%enum_suffix%)%)%)%,%
%e_first_suffix,%(%else-then(%enum_first_suffix%,%(%enum_first_suffix%)%)%)%,%
%e_next_suffix,%(%else-then(%enum_next_suffix%,%(%enum_next_suffix%)%)%)%,%
%e_last_suffix,%(%else-then(%enum_last_suffix%,%(%enum_last_suffix%)%)%)%,%
%e_count_suffix,%(%else-then(%enum_count_suffix%,%(%enum_count_suffix%)%)%)%,%
%e_name_prefix,%(%else-then(%e_name_prefix%,%(%enum_name_prefix%)%)%)%,%
%e_name_suffix,%(%else-then(%e_name_suffix%,%(%enum_name_suffix%)%)%)%,%
%e_value_prefix,%(%else-then(%e_value_prefix%,%(%enum_value_prefix%)%)%)%,%
%e_value_suffix,%(%else-then(%e_value_suffix%,%(%enum_value_suffix%)%)%)%,%
%e_names_suffix,%(%else-then(%e_names_suffix%,%(%enum_names_suffix%)%)%)%,%
%e_values_suffix,%(%else-then(%e_values_suffix%,%(%enum_values_suffix%)%)%)%,%
%e_values_prefix,%(%else-then(%e_values_prefix%,%(%tolower(%e_prefix%%e_values_suffix%)%)%)%)%,%
%e_names_prefix,%(%else-then(%e_names_prefix%,%(%tolower(%e_prefix%%e_names_suffix%)%)%)%)%,%
%e_values,%(%else-then(%e_values%,%(%e_prefix%%e_count_suffix%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%%filetype%-%filetype%-%enum_enum%.t)%
%)%)%