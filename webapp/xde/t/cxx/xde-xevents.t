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
%#   File: xde-xevents.t
%#
%# Author: $author$
%#   Date: 4/8/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%%(%
%
Expose;NoExpose;GraphicsExpose;
ClientMessage;
CirculateRequest;ConfigureRequest;SelectionRequest;ResizeRequest;MapRequest;
SelectionClear;
VisibilityNotify;ReparentNotify;MapNotify;MappingNotify;UnmapNotify;ColormapNotify;KeymapNotify;
GravityNotify;SelectionNotify;PropertyNotify;CirculateNotify;ConfigureNotify;
CreateNotify;DestroyNotify;EnterNotify;LeaveNotify;MotionNotify;
FocusIn;FocusOut;
ButtonPress;ButtonRelease;
KeyPress;KeyRelease;
%
%)%)%

#define XCreatePixmap XCREATEPIXMAP
#define XCreatePixmapCursor XCREATEPIXMAPCURSOR
#define XCreatePixmapFromBitmapData XCREATEPIXMAPFROMBITMAPDATA
#define XFreePixmap XFREEPIXMAP
#define XListPixmapFormats XLISTPIXMAPFORMATS
#define XSetWindowBackgroundPixmap XSETWINDOWBACKGROUNDPIXMAP
#define XSetWindowBorderPixmap XSETWINDOWBORDERPIXMAP

#define XmDestroyPixmap XMDESTROYPIXMAP
#define XmGetPixmap XMGETPIXMAP
#define XmGetPixmapByDepth XMGETPIXMAPBYDEPTH
