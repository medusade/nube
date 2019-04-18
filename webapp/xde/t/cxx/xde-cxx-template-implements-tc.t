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
%#   File: xde-cxx-template-implements-tc.t
%#
%# Author: $author$
%#   Date: 2/27/2009
%#
%#############################################################################
%with(%
%template_implements,%(%else-then(%template_implements%,%(%form_cxx_param_template_implements%)%)%)%,%
%%(%
%<?xml version="1.0"?>
<template-implements>%
%%parse(%template_implements%,;,,;,,%(%
%%with(%
%%(%
%class T%implements%=c%implements%%
%)%)%%
%)%,implements)%%
%%if(%template_implements%,%(;)%)%%
%%parse(%template_implements%,;,,;,,%(%
%%with(%
%TInterface,%(%if-then(%left(%implements%,Interface)%,%(Implements)%)%)%,%
%TInterface,%(%then-if(%TInterface%,%(T)%)%)%,%
%TImplements,%(%if-then(%left(%implements%,Implements)%,%(Implements)%)%)%,%
%TImplements,%(%then-if(%TImplements%,%(T)%)%)%,%
%%(%
%class %TInterface%%TImplements%=T%implements%%
%)%)%%
%)%,implements)%%
%</template-implements>
%
%)%)%