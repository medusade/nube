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
%#   File: xde-cs-html.t
%#
%# Author: $author$
%#   Date: 6/12/2008
%#
%# Template for C# to HTML
%#
%#############################################################################
%with(%
%content_type,%(%else-then(%content_type%,%(text/plain)%)%)%,%
%html_content_type,%(%else-then(%html_content_type%,%(%equal(text/html,%content_type%)%)%)%)%,%
%lt,%(%if(%html_content_type%,%(&lt;)%,%(<)%)%)%,%
%gt,%(%if(%html_content_type%,%(&gt;)%,%(>)%)%)%,%
%amp,%(%if(%html_content_type%,%(&amp;)%,%(&)%)%)%,%
%apos,%(%if(%html_content_type%,%(&apos;)%,%(')%)%)%,%
%quot,%(%if(%html_content_type%,%(&quot;)%,%(")%)%)%,%
%cc_,%(%if(%html_content_type%,%(<font class="comment">)%)%)%,%
%_cc,%(%if(%html_content_type%,%(</font>)%)%)%,%
%kk_,%(%if(%html_content_type%,%(<font class="keyword">)%)%)%,%
%_kk,%(%if(%html_content_type%,%(</font>)%)%)%,%
%ii_,%(%if(%html_content_type%,%(<font class="include">)%)%)%,%
%_ii,%(%if(%html_content_type%,%(</font>)%)%)%,%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%filecase,%(%else-then(%filecase%,%()%)%)%,%
%file,%(%else-then(%file%,%output%)%)%,%
%file,%(%if(%equal(lower,%filecase%)%,%(%tolower(%file%)%)%,%(%if(%equal(upper,%filecase%)%,%(%toupper(%file%)%)%,%(%if(%equal(underscore,%filecase%)%,%(%tounder(%file%)%)%,%(%file%)%)%)%)%)%)%)%,%
%filename,%(%filename(%file%)%)%,%
%filebase,%(%filebase(%filename%)%)%,%
%fileextension,%(%fileextension(%filename%)%)%,%
%filetypeextension,%(%else-then(%filetypeextension%,%(cs)%)%)%,%
%file,%(%if-then(%file%,%(%else(%fileextension%,%(.%filetypeextension%)%)%)%)%)%,%
%fileextension,%(%else-then(%fileextension%,%(%filetypeextension%)%)%)%,%
%filetype,%(%else-then(%filetype%,%(cs)%)%)%,%
%include_file,%(%filepath%/%fileprefix%%fileclass%%filetype%.t)%,%
%%(%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%%filetype%-html-begin.t)%)%)%%
%%include(%include_file%)%%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%%filetype%-html-end.t)%)%)%%
%)%)%