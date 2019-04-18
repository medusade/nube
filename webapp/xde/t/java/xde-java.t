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
%#   File: xde-java.t
%#
%# Author: $author$
%#   Date: 7/11/2008
%#
%#############################################################################
%with(%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%file,%(%else-then(%file%,%(%else-then(%output%,%(%if(%equal(class,%filename_uses%)%,%(%class%)%)%)%)%)%)%)%,%
%filecase,%(%else-then(%filecase%,%(normal)%)%)%,%
%file,%(%if(%equal(lower,%filecase%)%,%(%tolower(%file%)%)%,%(%if(%equal(upper,%filecase%)%,%(%toupper(%file%)%)%,%(%if(%equal(underscore,%filecase%)%,%(%tounder(%file%)%)%,%(%file%)%)%)%)%)%)%)%,%
%filename,%(%filename(%file%)%)%,%
%filebase,%(%filebase(%filename%)%)%,%
%fileextension,%(%fileextension(%filename%)%)%,%
%filetype,%(%else-then(%filetype%,%(java)%)%)%,%
%filetypeextension,%(%else-then(%filetypeextension%,%(%else-then(%filetype%,%(%fileextension%)%)%)%)%)%,%
%file,%(%if-then(%file%,%(%else(%fileextension%,%(.%filetypeextension%)%)%)%)%)%,%
%fileextension,%(%else-then(%fileextension%,%(%filetypeextension%)%)%)%,%
%author,%(%else-then(%author%,$author$)%)%,%
%first_year,%(%else-then(%first_year%,%(%else(%year%,%(1988)%,%(%year%)%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%copyright,%(%if(%equal(no,%copyright%)%,,%(yes)%)%)%,%
%open_source,%(%if(%equal(no,%open_source%)%,,%(yes)%)%)%,%
%content_type,%(%else-then(%content_type%,%(text/plain)%)%)%,%
%html_content_type,%(%else-then(%html_content_type%,%(%equal(text/html,%content_type%)%)%)%)%,%
%lt,%(%if(%html_content_type%,%(&lt;)%,%(<)%)%)%,%
%gt,%(%if(%html_content_type%,%(&gt;)%,%(>)%)%)%,%
%amp,%(%if(%html_content_type%,%(&amp;)%,%(&)%)%)%,%
%apos,%(%if(%html_content_type%,%(&apos;)%,%(')%)%)%,%
%quot,%(%if(%html_content_type%,%(&quot;)%,%(")%)%)%,%
%cc_,%(%if(%html_content_type%,%(<font class="comment">)%)%)%,%
%_cc,%(%if(%html_content_type%,%(</font>)%)%)%,%
%dd_,%(%if(%html_content_type%,%(<font class="commentx">)%)%)%,%
%_dd,%(%if(%html_content_type%,%(</font>)%)%)%,%
%kk_,%(%if(%html_content_type%,%(<font class="keyword">)%)%)%,%
%_kk,%(%if(%html_content_type%,%(</font>)%)%)%,%
%xx_,%(%if(%html_content_type%,%(<font class="keywordx">)%)%)%,%
%_xx,%(%if(%html_content_type%,%(</font>)%)%)%,%
%ii_,%(%if(%html_content_type%,%(<font class="include">)%)%)%,%
%_ii,%(%if(%html_content_type%,%(</font>)%)%)%,%
%_abstract_,%(%kk_%abstract%_kk%)%,%
%_assert_,%(%kk_%assert%_kk%)%,%
%_boolean_,%(%kk_%boolean%_kk%)%,%
%_break_,%(%kk_%break%_kk%)%,%
%_byte_,%(%kk_%byte%_kk%)%,%
%_case_,%(%kk_%case%_kk%)%,%
%_catch_,%(%kk_%catch%_kk%)%,%
%_char_,%(%kk_%char%_kk%)%,%
%_class_,%(%kk_%class%_kk%)%,%
%_const_,%(%kk_%const%_kk%)%,%
%_continue_,%(%kk_%continue%_kk%)%,%
%_default_,%(%kk_%default%_kk%)%,%
%_do_,%(%kk_%do%_kk%)%,%
%_double_,%(%kk_%double%_kk%)%,%
%_else_,%(%kk_%else%_kk%)%,%
%_enum_,%(%kk_%enum%_kk%)%,%
%_extends_,%(%kk_%extends%_kk%)%,%
%_final_,%(%kk_%final%_kk%)%,%
%_finalize_,%(%kk_%finalize%_kk%)%,%
%_finally_,%(%kk_%finally%_kk%)%,%
%_float_,%(%kk_%float%_kk%)%,%
%_for_,%(%kk_%for%_kk%)%,%
%_if_,%(%kk_%if%_kk%)%,%
%_goto_,%(%kk_%goto%_kk%)%,%
%_implements_,%(%kk_%implements%_kk%)%,%
%_import_,%(%kk_%import%_kk%)%,%
%_instanceof_,%(%kk_%instanceof%_kk%)%,%
%_int_,%(%kk_%int%_kk%)%,%
%_interface_,%(%kk_%interface%_kk%)%,%
%_long_,%(%kk_%long%_kk%)%,%
%_native_,%(%kk_%native%_kk%)%,%
%_new_,%(%kk_%new%_kk%)%,%
%_new_,%(%kk_%new%_kk%)%,%
%_main_,%(%kk_%main%_kk%)%,%
%_private_,%(%kk_%private%_kk%)%,%
%_protected_,%(%kk_%protected%_kk%)%,%
%_public_,%(%kk_%public%_kk%)%,%
%_return_,%(%kk_%return%_kk%)%,%
%_short_,%(%kk_%short%_kk%)%,%
%_static_,%(%kk_%static%_kk%)%,%
%_strictfp_,%(%kk_%strictfp%_kk%)%,%
%_super_,%(%kk_%super%_kk%)%,%
%_switch_,%(%kk_%switch%_kk%)%,%
%_synchronized_,%(%kk_%synchronized%_kk%)%,%
%_this_,%(%kk_%this%_kk%)%,%
%_throw_,%(%kk_%throw%_kk%)%,%
%_throws_,%(%kk_%throws%_kk%)%,%
%_transient_,%(%kk_%transient%_kk%)%,%
%_try_,%(%kk_%try%_kk%)%,%
%_void_,%(%kk_%void%_kk%)%,%
%_volatile_,%(%kk_%volatile%_kk%)%,%
%_while_,%(%kk_%while%_kk%)%,%
%indent_,%(    )%,%
%comment_type,%(%else(%equal(no,%comment_type%)%,%(%else-then(%comment_type%,%(javadoc)%)%)%)%)%,%
%cpp_comments,%(%else-then(%cpp_comments%,%(%equal(cpp,%comment_type%)%)%)%)%,%
%javadoc_comments,%(%else-then(%javadoc_comments%,%(%equal(javadoc,%comment_type%)%)%)%)%,%
%begin_separator,%(%else-then(%begin_separator%,%(%(%include(%filepath%/%fileprefix%java-begin-separator.t)%)%)%)%)%,%
%end_separator,%(%else-then(%end_separator%,%(%(%include(%filepath%/%fileprefix%java-end-separator.t)%)%)%)%)%,%
%left_separator,%(%else-then(%left_separator%,%(%(%indent%%if(%cpp_comments%,%(//)%,%( *)%)%)%)%)%)%,%
%left_comment,%(%else-then(%left_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%right_comment,%(%else-then(%right_comment%,%(%if(%cpp_comments%,%()%,%(*/)%)%)%)%)%,%
%first_comment,%(%else-then(%first_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%middle_comment,%(%else-then(%middle_comment%,%(%if(%cpp_comments%,%(//)%,%( *)%)%)%)%)%,%
%last_comment,%(%else-then(%last_comment%,%(%if(%cpp_comments%,%( //})%,%( */)%)%)%)%)%,%
%%(%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%java-html-begin.t)%)%)%%
%%if(%file%,%(%include(%filepath%/%fileprefix%java-file.t)%)%)%%
%%if(%class%,%(%include(%filepath%/%fileprefix%java-class.t)%)%)%%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%java-html-end.t)%)%)%%
%)%)%