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
%#   File: xde-hxx-hxx-enum-enum.t
%#
%# Author: $author$
%#   Date: 10/18/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%include(%filepath%/%fileprefix%cxx-enum-separator.t)%%
%%typedef_e%%kk_%enum%_kk%%e%
{%parse(%e_first_suffix%,;,%(
    )%,%(,)%,%(%
%%with(%
%e_name,%(%else-then(%left(%e_item%,:)%,%(%e_item%)%)%)%,%
%e_value,%(%then-if(%right(%e_item%,:)%,%( = )%)%)%,%
%%(%e_prefix%%e_name%%e_suffix%%e_value%)%)%%
%)%,e_item)%%
%%if(%e_first_suffix%,%(,
)%)%%
%%parse(%e_list%,;,%(
    )%,%(,)%,%(%
%%with(%
%e_name,%(%else-then(%left(%e_item%,:)%,%(%e_item%)%)%)%,%
%e_value,%(%then-if(%right(%e_item%,:)%,%( = )%)%)%,%
%%(%e_prefix%%e_name%%e_suffix%%do(%e_value%)%)%)%%
%)%,e_item)%%
%%if(%e_next_suffix%;%e_last_suffix%,%(,
)%)%%
%%parse(%e_next_suffix%;%e_last_suffix%:%e_prefix%%e_next_suffix%-1;%e_count_suffix%:%e_prefix%%e_last_suffix%-%e_prefix%%e_first_suffix%+1,;,%(
    )%,%(,)%,%(%
%%with(%
%e_name,%(%else-then(%left(%e_item%,:)%,%(%e_item%)%)%)%,%
%e_value,%(%then-if(%right(%e_item%,:)%,%( = )%)%)%,%
%%(%e_prefix%%e_name%%e_suffix%%e_value%)%)%%
%)%,e_item)%
}%e_typedef%;
%if(1,%(
%parse(%e_list%,;,%(%_#define_% )%,%(
)%,%(%
%%with(%
%e_name,%(%else-then(%left(%e_item%,:)%,%(%e_item%)%)%)%,%
%%(%e_prefix%%e_name_prefix%%e_name%%e_suffix%%e_name_suffix% "%e_name%")%)%%
%)%,e_item)%)%)%%
%)%)%