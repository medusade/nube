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
%#   File: xde-cs-html-begin.t
%#
%# Author: $author$
%#   Date: 6/12/2008
%#
%#############################################################################
%with(%
%comment_color,%(%else-then(%comment_color%,%(green)%)%)%,%
%keyword_color,%(%else-then(%keyword_color%,%(blue)%)%)%,%
%literal_color,%(%else-then(%literal_color%,%(red)%)%)%,%
%define_color,%(%else-then(%define_color%,%(purple)%)%)%,%
%include_color,%(%else-then(%include_color%,%(maroon)%)%)%,%
%%(%
%<html>
    <!--==========================================================-->
    <!-- Head                                                     -->
    <!--==========================================================-->
    <head>
        <!--==========================================================-->
        <!-- Style                                                    -->
        <!--==========================================================-->
        <style type="text/css">
            font.comment {color: %comment_color%; }
            font.keyword {color: %keyword_color%; }
            font.literal {color: %literal_color%; }
            font.define {color: %define_color%; }
            font.include {color: %include_color%; }
        </style>
        <!--==========================================================-->
        <!-- Script                                                   -->
        <!--==========================================================-->
        <script>
        </script>
    </head>
    <!--==========================================================-->
    <!-- Body                                                     -->
    <!--==========================================================-->
    <body>
        <pre>
%
%)%)%