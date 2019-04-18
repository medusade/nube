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
%#   File: xde-cdelegate-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 5/8/2008
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%statement,%(%else-then(%statement%,%(%(%include(%filepath%/%fileprefix%cdelegate-statement-cxx.t)%)%)%)%)%,%
%_statement,%(%else-then(%_statement%,%(%(%include(%filepath%/%fileprefix%cdelegate-unstatement-cxx.t)%)%)%)%)%,%
%class_name,%(%else-then(%class_name%,%()%)%)%,%
%Class_name,%(%else-then(%Class_name%,%(%class_name%)%)%)%,%
%CLASS_NAME,%(%else-then(%CLASS_NAME%,%(%toupper(%Class_name%)%)%)%)%,%
%class_name,%(%else-then(%_Class_name%,%(%tolower(%Class_name%)%)%)%)%,%
%class,%(%else-then(%class%,%(c%Class_name%Delegate)%)%)%,%
%functions,%(%if(%equal(no,%functions%)%,%(virtual)%,%(%functions%)%)%)%,%
%prefixsuffix_name,%(%else-then(%prefixsuffix_name%,%(On)%)%)%,%
%function_return,%(%else-then(%function_return%,%(eError error=e_ERROR_NONE)%)%)%,%
%function_parameters,%(%else-then(%function_parameters%,%(const char* text;int token=-1)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-cxx.t)%%
%)%)%