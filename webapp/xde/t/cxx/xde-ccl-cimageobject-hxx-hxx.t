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
%#   File: xde-ccl-cimageobject-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 6/4/2008
%#
%# Template for creating XDE derived ccl-cImageObject C++ class .hxx file
%#
%#############################################################################
%with(%
%%(%
%#include "cimage.hxx"

/**
 **********************************************************************
 *  Class: cImage%Class_name%
 *
 * Author: $author$
 *   Date: 3/28/2004
 **********************************************************************
 */
class cImage%Class_name%
: public cImageObject
{
public:
    typedef cImageObject cIs;

    cImageColor m_fg_color;
    cImageColor m_bg_color;
    
    cImageColorProperty 
        m_property_fg_color,
        m_property_bg_color;

    /**
     **********************************************************************
     * Constructor: cImage%Class_name%
     *
     *      Author: $author$
     *        Date: 3/28/2004
     **********************************************************************
     */
    cImage%Class_name%
    (cImageColor &fg_color, 
     cImageColor &bg_color,
     int x=0, int y=0, int width=0, int height=0) 
    : cIs(x,y,width,height),
      m_fg_color(fg_color),
      m_bg_color(bg_color),

      m_property_fg_color(m_property_list,m_fg_color,"fgcolor"),
      m_property_bg_color(m_property_list,m_bg_color,"bgcolor")
    {
    }

    /**
     **********************************************************************
     * Function: Paint
     *
     *   Author: $author$
     *     Date: 3/28/2004
     **********************************************************************
     */
    virtual void Paint
    (cImageInterface &image,
     int x=-1, int y=-1, int state=-1) const
    {
    }
};

/**
 **********************************************************************
 *  Class: cImage%Class_name%Type
 *
 * Author: $author$
 *   Date: 4/1/2004
 **********************************************************************
 */
class cImage%Class_name%Type
: public cImageObjectType
{
public:
    typedef cImageObjectType cIs;

    /**
     **********************************************************************
     * Constructor: cImage%Class_name%Type
     *
     *      Author: $author$
     *        Date: 4/1/2004
     **********************************************************************
     */
    cImage%Class_name%Type(const char *name="%class_name%")
    : cIs(name) 
    {
    }

    /**
     **********************************************************************
     * Function: CreateObject
     *
     *   Author: $author$
     *     Date: 3/31/2004
     **********************************************************************
     */
    virtual cImageObject *CreateObject
    (eError &error, cImageObjectSet &object_set, 
     cImageObjectTypes &object_types, cElementInterface &element)
    {
        error=e_ERROR_NOT_IMPLEMENTED;
        cImageObject *object=0;

        cCharPointerAttributeValue file(element,"file",0);

        cImageColorAttributeValue
            fgcolor(element,"fgcolor",1,1,255,255,255,255),
            bgcolor(element,"bgcolor",1,1,0,0,0,255);

        cIntAttributeValue 
            x(element,"x",0),
            y(element,"y",0),
            width(element,"width",100),
            height(element,"height",24);

        if ((object=NewObject
            (fgcolor,bgcolor,x,y,width,height)))
        {
            object->SetObjectType(this);

            if (file)
                object->SetFile(file);

            object->SetIsStatic(false);
        }

        return object;
    }
    /**
     **********************************************************************
     * Function: NewObject
     *
     *   Author: $author$
     *     Date: 5/19/2004
     **********************************************************************
     */
    virtual cImageObject *NewObject
    (cImageColor &fg_color, 
     cImageColor &bg_color,
     int x=0, int y=0, int width=0, int height=0)
    {
        return new cImage%Class_name%
        (fg_color,bg_color,edge_color,x,y,width,height);
    }
};

/**
 **********************************************************************
 *  Class: cStaticImage%Class_name%Type
 *
 * Author: $author$
 *   Date: 4/1/2004
 **********************************************************************
 */
class cStaticImage%Class_name%Type
: public cImage%Class_name%Type
{
public:
    typedef cImage%Class_name%Type cIs;

    static cStaticImage%Class_name%Type m_instance;

    cStaticImageObjectType m_static_type;

    /**
     **********************************************************************
     * Constructor: cStaticImage%Class_name%Type
     *
     *      Author: $author$
     *        Date: 4/1/2004
     **********************************************************************
     */
    cStaticImage%Class_name%Type()
    : m_static_type(*this) 
    {
    }
};
%
%)%)%