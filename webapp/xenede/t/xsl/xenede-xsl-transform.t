%########################################################################
%# Copyright (c) 1988-2009 $organization$     
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
%#   File: xenede-xsl-transform.t
%#
%# Author: $author$           
%#   Date: 9/29/2009
%########################################################################
%with(%
%%(%
%%if(%file%,%(%
%%with(filepath,%(%filepath%/..)%,%(%
%%begin_processor%xml version="%xml_version%"%end_processor%
%
%%include(%filepath%/xenede-file.t)%%
%)%)%%
%)%,%(%
%)%)%%
%%if(%derived_fileinclude%,%(%
%%include(%derived_fileinclude%)%%
%)%,%(%
%%include(%filepath%/xenede-xsl-begin.t)%%
%%include(%filepath%/xenede-xsl-output.t)%%
%%include(%filepath%/xenede-xsl-include.t)%%
%%include(%filepath%/xenede-xsl-param.t)%%
%%include(%filepath%/xenede-xsl-variable.t)%%
%%include(%filepath%/xenede-xsl-templates.t)%%
%%include(%filepath%/xenede-xsl-end.t)%%
%)%)%%
%)%)%