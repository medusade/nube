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
%#   File: xde-cxobject-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 4/11/2008
%#
%#    $Id$
%#
%# Template for creating XDE derived cXObject C++ class .hxx file
%#
%#############################################################################
%with(%
%attach,%(%else-then(%attach%,%(Attach)%)%)%,%
%Attach,%(%else-then(%Attach%,%(%attach%)%)%)%,%
%ATTACH,%(%else-then(%ATTACH%,%(%toupper(%Attach%)%)%)%)%,%
%attach,%(%else-then(%_Attach%,%(%tolower(%Attach%)%)%)%)%,%
%detach,%(%else-then(%detach%,%(Detach)%)%)%,%
%Detach,%(%else-then(%Detach%,%(%detach%)%)%)%,%
%DETACH,%(%else-then(%DETACH%,%(%toupper(%Detach%)%)%)%)%,%
%detach,%(%else-then(%_Detach%,%(%tolower(%Detach%)%)%)%)%,%
%attached,%(%else-then(%attached%,%(Display)%)%)%,%
%Attached,%(%else-then(%Attached%,%(%attached%)%)%)%,%
%ATTACHED,%(%else-then(%ATTACHED%,%(%toupper(%Attached%)%)%)%)%,%
%attached,%(%else-then(%_Attached%,%(%tolower(%Attached%)%)%)%)%,%
%drawable,%(%else-then(%drawable%,%(Drawable)%)%)%,%
%Drawable,%(%else-then(%Drawable%,%(%drawable%)%)%)%,%
%DRAWABLE,%(%else-then(%DRAWABLE%,%(%toupper(%Drawable%)%)%)%)%,%
%drawable,%(%else-then(%_Drawable%,%(%tolower(%Drawable%)%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-hxx-includes.t)%%
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
    
    %Class_name% m_%class_name%;
    
    %cc_%/**
     **********************************************************************
     * Constructor: %class%
     *
     *      Author: %author%
     *        Date: %date%
     **********************************************************************
     */%_cc%
    %class%
    (%Attached%* %attached%=Null%Attached%, 
     %Class_name% %class_name%=None)
    : cExtends(%attached%),
      m_%class_name%(%class_name%)
    {
    }
    %cc_%/**
     **********************************************************************
     *  Destructor: %class%
     *
     *      Author: %author%
     *        Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% ~%class%()
    {
        eError error;
        %Attached%* %attached%;
        bool created;
        if ((created  = (Null%Attached% != (%attached% = Attached()))))
        if ((error = Destroy(created)))
            throw(error);
    }
    %cc_%/**
     **********************************************************************
     * Function: %create%
     *
     *   Author: %author%
     *     Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% eError %create%
    (%Attached%& %attached%, Drawable drawable,
     bool onlyDestroyed=false) 
    {
        eError error = e_ERROR_FAILED;
        bool created;

        if ((error = Destroyed(onlyDestroyed)))
            return error;

        if ((created = (None != (m_%class_name% = 
            XCreate%Class_name%(&%attached%, drawable)))))
        if ((error = Attach(&%attached%)))
            Destroy(created);

        %_return_% error;
    }
    %cc_%/**
     **********************************************************************
     * Function: %destroy%
     *
     *   Author: %author%
     *     Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% eError %destroy%
    (bool onlyCreated=false) 
    {
        eError error = e_ERROR_FAILED;
        %Attached%* %attached%;
        bool created;
        int err;

        if (!(created  = (Null%Attached% != (%attached% = Attached()))))
        if (onlyCreated)
            return e_ERROR_NOT_CREATED;
        else
        return e_ERROR_NONE;

        if (!(created = (None != m_%class_name%)))
            return e_ERROR_NOT_CREATED;

        if (!(err = XFree%Class_name%(%attached%, m_pixmap)))
            error = e_ERROR_NONE;

        m_%class_name% = None;
        Detach(%attached%);
        %_return_% error;
    }
    %cc_%/**
     **********************************************************************
     * Function: %Attach%
     *
     *   Author: %author%
     *     Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% eError %Attach%
    (%Attached%* %attached%, %Class_name% %class_name%,
     bool only%Detach%ed=false) 
    {
        eError error = e_ERROR_FAILED;

        if ((error = cExtends::%Attach%(%attached%, only%Detach%ed)))
            return error;
            
        m_%class_name% = %class_name%;
        %_return_% error;
    }
    %cc_%/**
     **********************************************************************
     * Function: %Detach%
     *
     *   Author: %author%
     *     Date: %date%
     **********************************************************************
     */%_cc%
    %_virtual_% eError %Detach%
    (%Attached%*& %attached%, %Class_name%& %class_name%,
     bool only%Attach%ed=false) 
    {
        eError error = e_ERROR_FAILED;

        %class_name% = m_%class_name%;
        
        if ((error = cExtends::%Detach%(%attached%, only%Attach%ed)))
            return error;
            
        %_return_% error;
    }
};
%
%)%)%