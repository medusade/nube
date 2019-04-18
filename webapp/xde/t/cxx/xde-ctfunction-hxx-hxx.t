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
%#   File: xde-ctfunction-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 4/2/2008
%#
%#    $Id$
%#
%# Template for creating XDE derived cTFunction C++ class .hxx file
%#
%#############################################################################
%with(%
%%(%
%%cc_%/**
 **********************************************************************
 *  Class: %class%
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */%_cc%
%_class_% %class%
: %_public_% %is%
{
%_public_%:
    %_typedef_% %is% cExtends;

    %cc_%/**
     **********************************************************************
     * Constructor: %class%
     *
     *      Author: %author%
     *        Date: %date%
     **********************************************************************
     */%_cc%
    %class%(const char* name, const char* description)
    : cExtends(name, description)
    {
        %_static_% cTFunctionParameter parameter[] %if(%parameters%,%(
        )%)%= {%
%%parse(%parameters%,;,,,%(%
%%with(%
%d,%(%else-then(%right(%p%,:)%,%()%)%)%,%
%p,%(%else-then(%left(%p%,:)%,%(%p%)%)%)%,%
%%(%
%{"%p%","%d%"}%
%)%)%%
%%(,
           )%%
%%)%,p)%%
%{0,0}};
        m_parameters = (%kk_%sizeof%_kk%(parameter)/%kk_%sizeof%_kk%(cTFunctionParameter))-1;
        m_parameter = parameter;
    }
    %cc_%/**
     **********************************************************************
     * Function: Expand
     *
     *   Author: %author%
     *     Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% eError Expand
    (cCharStreamInterface &result, cTInterface &t, 
     const cTFunctionArgumentList& arglist) %_const_%
    {
        %_return_% e_ERROR_NONE;
    }
}%if(%class_instance%,%( %class_instance%
  %(()%"%class_name%","%class_name%%(()%%
%%parse(%parameters%,;,,%(,)%,%(%
%%with(%
%p,%(%else-then(%left(%p%,:)%,%(%p%)%)%)%,%
%%(%
%%p%%
%)%)%%
%%)%,p)%%
%%())%"%())%)%)%;
%
%)%)%