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
%#   File: xde-hxx-class-setget-function.t
%#
%# Author: $author$
%#   Date: 4/25/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%with(%
%set_f,%(%set%)%,%
%get_f,%(%get%)%,%
%do_f,%(%set_f%)%,%
%undo_f,%(%get_f%)%,%
%return_suffix,%(%if(%return_name_suffix%,%(%f%)%)%)%,%
%prefix,%(%set%%prefix%)%,%
%functions_t,%(%setget_t%)%,%
%functions_a,%(%setget_a%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%%with(%
%set_f,%(%get%)%,%
%get_f,%(%set%)%,%
%do_f,%(%set_f%)%,%
%undo_f,%(%get_f%)%,%
%return_suffix,%(%if(%return_name_suffix%,%(%f%)%)%)%,%
%prefix,%(%get%%prefix%)%,%
%functions_t,%(%setget_t%)%,%
%functions_a,%(%setget_a%)%,%
%functions_c,%( const)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%
%%include(%filepath%/%fileprefix%function-hxx.t)%)%)%%
%)%)%