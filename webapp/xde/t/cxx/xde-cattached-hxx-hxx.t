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
%#   File: xde-cattached-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 4/18/2008
%#
%#    $Id$
%#
%# Template for creating XDE derived cAttached C++ class .hxx file
%#
%#############################################################################
%with(%
%handle,%(%else-then(%handle%,%(%Class_name%)%)%)%,%
%Handle,%(%else-then(%Handle%,%(%handle%)%)%)%,%
%HANDLE,%(%else-then(%HANDLE%,%(%toupper(%Handle%)%)%)%)%,%
%handle,%(%else-then(%_Handle%,%(%tolower(%Handle%)%)%)%)%,%
%attached,%(%else-then(%attached%,%(%Class_name%)%)%)%,%
%Attached,%(%else-then(%Attached%,%(%attached%)%)%)%,%
%ATTACHED,%(%else-then(%ATTACHED%,%(%toupper(%Attached%)%)%)%)%,%
%attached,%(%else-then(%_Attached%,%(%tolower(%Attached%)%)%)%)%,%
%statement,%(%else-then(%statement%,%(%(%include(%filepath%/%fileprefix%cattached-statement-cxx.t)%)%)%)%)%,%
%_statement,%(%else-then(%_statement%,%(%(%include(%filepath%/%fileprefix%cattached-unstatement-cxx.t)%)%)%)%)%,%
%%(%
%%if(%system_include%,%(%with(%
%include_system,%(yes)%,%
%include,%(%system_include%)%,%
%%(%include(%filepath%/%fileprefix%cxx-include.t)%)%)%)%)%%
%%if(%include%,%(%include(%filepath%/%fileprefix%cxx-include.t)%)%)%%
%%if(%ifdef%,%(%include(%filepath%/%fileprefix%cxx-ifdef.t)%)%)%%
%%if(%ifndef%,%(%include(%filepath%/%fileprefix%cxx-ifndef.t)%)%)%%
%%if(%enum%,%(%include(%filepath%/%fileprefix%hxx-enum.t)%)%)%%
%%if(%undef%,%(%parse(%undef%,;,,,%(%include(%filepath%/%fileprefix%cxx-undef.t)%)%,undef)%)%)%%
%%if(%define%,%(%parse(%define%,;,,,%(%include(%filepath%/%fileprefix%cxx-define.t)%)%,define)%)%)%%
%%if(%typedef%,%(%parse(%typedef%,;,,,%(%include(%filepath%/%fileprefix%cxx-typedef.t)%)%,typedef)%)%)%%
%
typedef %HANDLE% tNull%Attached%;
#define vNull%Attached% NULL_%HANDLE%

%cc_%/**
 **********************************************************************
 *  Typedef: c%Attached%AttachInterface
 *
 *  Author: %author%
 *    Date: %date%
 **********************************************************************
 */%_cc%
typedef cAttachInterfaceT
%lt%%Attached%, cInterfaceBase%gt%
c%Attached%AttachInterface;

%cc_%/**
 **********************************************************************
 *  Typedef: c%Attached%DetachInterface
 *
 *  Author: %author%
 *    Date: %date%
 **********************************************************************
 */%_cc%
typedef cDetachInterfaceT
%lt%%Attached%, cInterfaceBase%gt%
c%Attached%DetachInterface;

%cc_%/**
 **********************************************************************
 *  Typedef: c%Attached%AttachedInterface
 *
 *  Author: %author%
 *    Date: %date%
 **********************************************************************
 */%_cc%
typedef cAttachedInterfaceT
%lt%%Attached%, c%Attached%AttachInterface, c%Attached%DetachInterface%gt%
c%Attached%AttachedInterface;

%cc_%/**
 **********************************************************************
 *  Typedef: c%Attached%Attached
 *
 *  Author: %author%
 *    Date: %date%
 **********************************************************************
 */%_cc%
typedef cAttachedT
%lt%%Attached%, tNull%Attached%, vNull%Attached%, 
 c%Attached%AttachedInterface, cBase%gt%
c%Attached%Attached;

%cc_%/**
 **********************************************************************
 *  Typedef: c%Attached%CreatedAttached
 *
 *  Author: %author%
 *    Date: %date%
 **********************************************************************
 */%_cc%
typedef cCreatedAttachedT
%lt%%Attached%, tNull%Attached%, vNull%Attached%, 
 c%Attached%Attached, cCreatedImplement%gt%
c%Attached%CreatedAttached;
%
%%include(%filepath%/%fileprefix%hxx-class.t)%%
%)%)%