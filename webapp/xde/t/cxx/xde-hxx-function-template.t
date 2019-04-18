%#############################################################################
%# Copyright (c) 1988-2009 $author$
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
%#   File: xde-hxx-function-template.t
%#
%# Author: $author$
%#   Date: 6/6/2009
%#
%#############################################################################
%with(%
%kk,%(%(%include(%filepath%/%fileprefix%cxx-keyword.t)%)%)%,%
%%(%
%%if(%function_template%,%(%
%%_template_%
%lt%%
%%parse(%function_template%,;,,%(,
 )%,,%(%
%%with(%
%t_type,%(%if-then(%apply(word,%left(%t%, )%,%kk%)%,%( )%)%)%,%
%t_value,%(%then-if(%right(%t%,=)%,%(=)%)%)%,%
%t_name,%(%else-then(%left(%right(%t%, )%,=)%,%(%right(%t%, )%)%)%)%,%
%%(%t_type%%t_name%%t_value%)%)%%
%)%,t)%%
%%gt%

%
%)%)%%
%)%)%