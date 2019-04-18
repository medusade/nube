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
%#   File: xde-cxx-functions.t
%#
%# Author: $author$
%#   Date: 10/11/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%%parse(%function_name%,;,,,%(%
%%if(%functions%,%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%%if(%createdestroy%,%(%
%%with(%
%prefix,%(%create%%prefix%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%%with(%
%prefix,%(%destroy%%prefix%)%,%
%statement,%(%_statement%)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%)%)%%
%%if(%setget%,%(%
%%with(%
%prefix,%(%set%%prefix%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%%with(%
%prefix,%(%get%%prefix%)%,%
%statement,%(%_statement%)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%)%)%%
%%if(%doundo%,%(%
%%with(%
%prefix,%(%do%%prefix%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%%with(%
%prefix,%(%undo%%prefix%)%,%
%statement,%(%_statement%)%,%
%return_t,%(%_return_t%)%,%
%return_n,%(%_return_n%)%,%
%return_v,%(%_return_v%)%,%
%parameters,%(%_parameters%)%,%
%%(%include(%filepath%/%fileprefix%cxx-function.t)%)%)%%
%)%)%%
%)%,f)%%
%)%)%