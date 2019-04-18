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
%#   File: xde-xdefine-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 2/5/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%WIN32,%(%else-then(%WIN32%,%(WIN32)%)%)%,%
%Windows,%(%else-then(%Windows%,%(Windows)%)%)%,%
%UNIX,%(%else-then(%UNIX%,%(UNIX)%)%)%,%
%Unix,%(%else-then(%Unix%,%(Unix)%)%)%,%
%%(%
%
#if defined(%WIN32%) 
/* %Windows%
 */
#if !defined(%CLASS%_%WIN32%_API) 
#if !defined(%CLASS%_%UNIX%_API) 
/* use %Windows% API
 */
#define %CLASS%_%WIN32%_API
#endif /* !defined(%CLASS%_%UNIX%_API) */
#endif /* !defined(%CLASS%_%WIN32%_API) */
#else /* defined(%WIN32%) */
/* %Unix%
 */
#if !defined(%CLASS%_%UNIX%_API) 
#if !defined(%CLASS%_%WIN32%_API) 
/* use %Unix% API
 */
#define %CLASS%_%UNIX%_API
#endif /* !defined(%CLASS%_%WIN32%_API) */
#endif /* !defined(%CLASS%_%UNIX%_API) */
#endif /* defined(%WIN32%) */
%
%)%)%