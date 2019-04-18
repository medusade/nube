%#############################################################################
%# Copyright (c) 1988-2007 $author$
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
%#   File: xde-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 6/27/2007
%#
%#    $Id$
%#
%#############################################################################
%with(%
%c,%(%else-then(%_C%,%(%tolower(%C%)%)%)%)%,%
%c_,%(%else-then(%_C_%,%(%tolower(%C_%)%)%)%)%,%
%i,%(%else-then(%_I%,%(%tolower(%I%)%)%)%)%,%
%i_,%(%else-then(%_I_%,%(%tolower(%I_%)%)%)%)%,%
%_interface,%(%else-then(%_Interface%,%(%tolower(%Interface%)%)%)%)%,%
%e,%(%else-then(%_E%,%(%tolower(%E%)%)%)%)%,%
%e_,%(%else-then(%_E_%,%(%tolower(%E_%)%)%)%)%,%
%content_type,%(%else-then(%content_type%,%(text/plain)%)%)%,%
%html_content_type,%(%else-then(%html_content_type%,%(%equal(text/html,%content_type%)%)%)%)%,%
%nl,%(
)%,%
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
%_#include_,%(%else-then(%_#include_%,%(%kk_%#include%_kk%)%)%)%,%
%_#if_,%(%else-then(%_#if_%,%(%kk_%#if%_kk%)%)%)%,%
%_#ifdef_,%(%else-then(%_#ifdef_%,%(%kk_%#ifdef%_kk%)%)%)%,%
%_#ifndef_,%(%else-then(%_#ifndef_%,%(%kk_%#ifndef%_kk%)%)%)%,%
%_#elif_,%(%else-then(%_#elif_%,%(%kk_%#elif%_kk%)%)%)%,%
%_#else_,%(%else-then(%_#else_%,%(%kk_%#else%_kk%)%)%)%,%
%_#endif_,%(%else-then(%_#endif_%,%(%kk_%#endif%_kk%)%)%)%,%
%_#define_,%(%else-then(%_#define_%,%(%kk_%#define%_kk%)%)%)%,%
%_#undef_,%(%else-then(%_#undef_%,%(%kk_%#undef%_kk%)%)%)%,%
%_#pragma_,%(%else-then(%_#pragma_%,%(%kk_%#pragma%_kk%)%)%)%,%
%__attribute__,%(%else-then(%__attribute__%,%(%kk_%__attribute__%_kk%)%)%)%,%
%_defined_,%(%else-then(%_defined_%,%(%kk_%defined%_kk%)%)%)%,%
%_template_,%(%else-then(%_template_%,%(%kk_%template%_kk%)%)%)%,%
%_typedef_,%(%else-then(%_typedef_%,%(%kk_%typedef%_kk%)%)%)%,%
%_enum_,%(%else-then(%_enum_%,%(%kk_%enum%_kk%)%)%)%,%
%_struct_,%(%else-then(%_struct_%,%(%kk_%struct%_kk%)%)%)%,%
%_union_,%(%else-then(%_union_%,%(%kk_%union%_kk%)%)%)%,%
%_class_,%(%else-then(%_class_%,%(%kk_%class%_kk%)%)%)%,%
%_public_,%(%else-then(%_public_%,%(%kk_%public%_kk%)%)%)%,%
%_protected_,%(%else-then(%_protected_%,%(%kk_%protected%_kk%)%)%)%,%
%_private_,%(%else-then(%_private_%,%(%kk_%private%_kk%)%)%)%,%
%_virtual_,%(%else-then(%_virtual_%,%(%kk_%virtual%_kk%)%)%)%,%
%_volitile_,%(%else-then(%_volitile_%,%(%kk_%volitile%_kk%)%)%)%,%
%_static_,%(%else-then(%_static_%,%(%kk_%static%_kk%)%)%)%,%
%_const_,%(%else-then(%_const_%,%(%kk_%const%_kk%)%)%)%,%
%_signed_,%(%else-then(%_signed_%,%(%kk_%signed%_kk%)%)%)%,%
%_unsigned_,%(%else-then(%_unsigned_%,%(%kk_%unsigned%_kk%)%)%)%,%
%_long_,%(%else-then(%_long_%,%(%kk_%long%_kk%)%)%)%,%
%_short_,%(%else-then(%_short_%,%(%kk_%short%_kk%)%)%)%,%
%_double_,%(%else-then(%_double_%,%(%kk_%double%_kk%)%)%)%,%
%_float_,%(%else-then(%_float_%,%(%kk_%float%_kk%)%)%)%,%
%_int_,%(%else-then(%_int_%,%(%kk_%int%_kk%)%)%)%,%
%_char_,%(%else-then(%_char_%,%(%kk_%char%_kk%)%)%)%,%
%_bool_,%(%else-then(%_bool_%,%(%kk_%bool%_kk%)%)%)%,%
%_main_,%(%else-then(%_main_%,%(%kk_%main%_kk%)%)%)%,%
%_return_,%(%else-then(%_return_%,%(%kk_%return%_kk%)%)%)%,%
%_if_,%(%else-then(%_if_%,%(%kk_%if%_kk%)%)%)%,%
%_else_,%(%else-then(%_else_%,%(%kk_%else%_kk%)%)%)%,%
%indent_,%(%else-then(%indent_%,%(    )%)%)%,%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%fileclass,%(%if-then(%fileclass%,%(-)%)%)%,%
%fileextends,%(%if-then(%fileextends%,%(-)%)%)%,%
%file,%(%else-then(%file%,%output%)%)%,%
%filecase,%(%else-then(%filecase%,%(lower)%)%)%,%
%file,%(%if(%equal(lower,%filecase%)%,%(%tolower(%file%)%)%,%(%if(%equal(upper,%filecase%)%,%(%toupper(%file%)%)%,%(%if(%equal(underscore,%filecase%)%,%(%tounder(%file%)%)%,%(%file%)%)%)%)%)%)%)%,%
%filename,%(%filename(%file%)%)%,%
%filebase,%(%filebase(%filename%)%)%,%
%fileextension,%(%fileextension(%filename%)%)%,%
%filetype,%(%else-then(%filetype%,%(%file_type%)%)%)%,%
%filetypeextension,%(%else-then(%filetypeextension%,%(%else-then(%filetype%,%(%fileextension%)%)%)%)%)%,%
%filetype,%(%if(%equal(cpp,%filetype%)%,%(cxx)%,%(%if(%equal(hpp,%filetype%)%,%(hxx)%,%(%else-then(%equal(cxx,%filetype%)%,%(%else-then(%equal(hxx,%filetype%)%,%(%else-then(%equal(c,%filetype%)%,%(h)%)%)%)%)%)%)%)%)%)%)%,%
%file,%(%if-then(%file%,%(%else(%fileextension%,%(.%filetypeextension%)%)%)%)%)%,%
%fileextension,%(%else-then(%fileextension%,%(%filetypeextension%)%)%)%,%
%fileheaderextension,%(%if(%equal(cpp,%fileextension%)%,%(hpp)%,%(%if(%equal(cxx,%fileextension%)%,%(hxx)%,%(h)%)%)%)%)%,%
%filetype_filetype,%(%else-then(%filetype_filetype%,%(%filetype%-%filetype%)%)%)%,%
%author,%(%else-then(%author%,$author$)%)%,%
%organization,%(%else-then(%organization%,%author%)%)%,%
%first_year,%(%else-then(%first_year%,%(%else(%year%,%(1988)%,%(%year%)%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%month,%(%else-then(%month%,%(%month()%)%)%)%,%
%day,%(%else-then(%day%,%(%day()%)%)%)%,%
%copyright,%(%if(%equal(no,%copyright%)%,,%(%include(%filepath%/%fileprefix%copyright.t)%)%)%)%,%
%open_source,%(%if(%equal(no,%open_source%)%,,yes)%)%,%
%h,%(%equal(h,%tolower(%fileextension%)%)%)%,%
%hxx,%(%equal(hxx,%tolower(%fileextension%)%)%)%,%
%hpp,%(%equal(hpp,%tolower(%fileextension%)%)%)%,%
%cpp_comments,%(%else-then(%cpp_comments%,%(%equal(hpp,%tolower(%filetypeextension%)%)%%equal(cpp,%tolower(%filetypeextension%)%)%)%)%)%,%
%lcomment,%(%else-then(%lcomment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%rcomment,%(%else-then(%rcomment%,%(%if(%cpp_comments%,%()%,%(*/)%)%)%)%)%,%
%ifndef_hxx,%(%if(%h%%hxx%%hpp%,%(%toupper(_%filebase%_%h%%hxx%%hpp%)%)%)%)%,%
%enum,%(%else(%equal(no,%enum%)%,%(%else-then(%enum%,%(%if(%enum_name%,%(yes)%)%)%)%)%)%)%,%
%INTERFACE_CLASS,%(%else-then(%INTERFACE_CLASS%,%(c_INTERFACE_CLASS)%)%)%,%
%IMPLEMENT_CLASS,%(%else-then(%IMPLEMENT_CLASS%,%(c_IMPLEMENT_CLASS)%)%)%,%
%EXPORT_CLASS,%(%else-then(%EXPORT_CLASS%,%(c_EXPORT_CLASS)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%class%)%)%)%)%,%
%_class,%(%else-then(%_class%,%(%tolower(%class%)%)%)%)%,%
%classt,%(%else-then(%classt%,%(%class%)%)%)%,%
%classt,%(%else-then(%left-of-right(%classt%,T)%,%(%classt%)%)%)%,%
%ClassT,%(%else-then(%ClassT%,%(%classt%)%)%)%,%
%CLASST,%(%else-then(%CLASST%,%(%toupper(%ClassT%)%)%)%)%,%
%classt,%(%else-then(%_ClassT%,%(%tolower(%ClassT%)%)%)%)%,%
%unclass_name,%(%else-then(%right(%class_name%,/)%,%(%else(%left(%class_name%,/)%,%(%unclass_name%)%)%)%)%)%,%
%Unclass_name,%(%else-then(%Unclass_name%,%(%unclass_name%)%)%)%,%
%UNCLASS_NAME,%(%else-then(%UNCLASS_NAME%,%(%toupper(%Unclass_name%)%)%)%)%,%
%unclass_name,%(%else-then(%_Unclass_name%,%(%tolower(%Unclass_name%)%)%)%)%,%
%class_name,%(%else-then(%left(%class_name%,/)%,%(%else(%right(%class_name%,/)%,%(%class_name%)%)%)%)%)%,%
%Class_name,%(%else-then(%Class_name%,%(%class_name%)%)%)%,%
%CLASS_NAME,%(%else-then(%CLASS_NAME%,%(%toupper(%Class_name%)%)%)%)%,%
%class_name,%(%else-then(%_class_name%,%(%tolower(%class_name%)%)%)%)%,%
%ifdef,%(%else(%equal(-,%ifdef%)%,%ifdef%)%)%,%
%ifndef,%(%else(%equal(-,%ifndef%)%,%else-then(%ifndef%,%(%ifndefined%)%)%)%)%,%
%function_ifdef,%(%else(%equal(-,%function_ifdef%)%,%function_ifdef%)%)%,%
%function_ifndef,%(%else(%equal(-,%function_ifndef%)%,%function_ifndef%)%)%,%
%extends_name,%(%else-then(%extends_name%,%(%extends%)%)%)%,%
%Extends_name,%(%else-then(%Extends_name%,%(%extends_name%)%)%)%,%
%EXTENDS_NAME,%(%else-then(%EXTENDS_NAME%,%(%toupper(%Extends_name%)%)%)%)%,%
%extends_name,%(%else-then(%_Extends_name%,%(%tolower(%Extends_name%)%)%)%)%,%
%implements_name,%(%else-then(%implements_name%,%(%implements%)%)%)%,%
%Implements_name,%(%else-then(%Implements_name%,%(%implements_name%)%)%)%,%
%IMPLEMENTS_NAME,%(%else-then(%IMPLEMENTS_NAME%,%(%toupper(%Implements_name%)%)%)%)%,%
%implements_name,%(%else-then(%_Implements_name%,%(%tolower(%Implements_name%)%)%)%)%,%
%packed,%(%else(%equal(no,%packed%)%,%(%packed%)%)%)%,%
%struct,%(%if(%else(%struct%,no)%%equal(no,%struct%)%,%(class)%,%(%struct%)%)%)%,%
%interface,%(%else(%else(%interface%,no)%%equal(no,%interface%)%,%(%if(%equal(export,%interface%)%,%(%EXPORT_CLASS% )%,%(%if(%equal(implement,%interface%)%,%(%IMPLEMENT_CLASS% )%,%(%INTERFACE_CLASS% )%)%)%)%)%)%)%,%
%Class,%(%if(%equal(struct,%struct%)%,%(Struct)%,%if(%equal(union,%struct%)%, Union, Class)%)%)%,%
%_Class_,%(%kk_%%struct%%_kk%)%,%
%_Struct_,%(%kk_%%struct%%_kk%)%,%
%_Struct_typedef_,%(%if(%h%,%(%_typedef_% )%)%)%,%
%as,%(%else-then(%as%,%(%class%)%)%)%,%
%is,%(%else-then(%is%,%(%extends%)%)%)%,%
%access,%(%else(%equal(no,%access%)%,%access%)%)%,%
%is_access,%(%else(%equal(no,%is_access%)%,%is_access%)%)%,%
%implements_access,%(%else(%equal(no,%implements_access%)%,%implements_access%)%)%,%
%constructor_t,%(%else(%equal(no,%constructor%)%,%(%else(%equal(yes,%constructor%)%,%(%constructor% )%)%)%)%)%,%
%constructor_p,%(%equal(yes,%function_prototype%)%)%,%
%destructor_t,%(%else(%equal(no,%destructor%)%,%(%else(%equal(yes,%destructor%)%,%(%destructor% )%)%)%)%)%,%
%destructor_p,%(%equal(yes,%function_prototype%)%)%,%
%parameters_separator,%(%else-then(%parameters_separator%,%(;)%)%)%,%
%parameters,%(%else-then(%left(%function_parameters%,/)%,%(%else(%right(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%_parameters,%(%else-then(%right(%function_parameters%,/)%,%(%else(%left(%function_parameters%,/)%,%(%function_parameters%)%)%)%)%)%,%
%parameters_void,%(%equal(void,%parameters%)%)%,%
%_parameters_void,%(%equal(void,%_parameters%)%)%,%
%parameter,%(%else-then(%left(%parameters%,;)%,%parameters%)%)%,%
%_parameter,%(%else-then(%left(%_parameters%,;)%,%_parameters%)%)%,%
%parameter_t,%(%if-then(%left-of-right(%parameter%, )%, )%)%,%
%_parameter_t,%(%if-then(%left-of-right(%_parameter%, )%, )%)%,%
%parameter_n,%(%right(%else-then(%left(%parameter%,=)%,%parameter%)%, )%)%,%
%_parameter_n,%(%right(%else-then(%left(%_parameter%,=)%,%_parameter%)%, )%)%,%
%parameter_v,%(%then-if(%right(%parameter%,=)%, = )%)%,%
%_parameter_v,%(%then-if(%right(%_parameter%,=)%, = )%)%,%
%return,%(%else-then(%left(%function_return%,/)%,%(%else(%right(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%_return,%(%else-then(%right(%function_return%,/)%,%(%else(%left(%function_return%,/)%,%(%function_return%)%)%)%)%)%,%
%return_void,%(%equal(void,%return%)%)%,%
%_return_void,%(%equal(void,%_return%)%)%,%
%return_t,%(%if-then(%else-then(%left-of-right(%return%, )%,%(%return%)%)%, )%)%,%
%_return_t,%(%if-then(%else-then(%left-of-right(%_return%, )%,%(%_return%)%)%, )%)%,%
%return_n,%(%right(%else-then(%left(%return%,=)%,%return%)%, )%)%,%
%_return_n,%(%right(%else-then(%left(%_return%,=)%,%_return%)%, )%)%,%
%return_v,%(%then-if(%right(%return%,=)%, = )%)%,%
%_return_v,%(%then-if(%right(%_return%,=)%, = )%)%,%
%function_statement,%(%else-then(%function_statement%,%(%function_body%)%)%)%,%
%statement,%(%else-then(%statement%,%(%left-of-right(%function_statement%,\)%)%)%)%,%
%_statement,%(%else-then(%_statement%,%(%right-of-left(%function_statement%,\)%)%)%)%,%
%statement,%(%else-then(%statement%,%(%else-then(%left-of-right(%function_statement%,/)%,%(%else(%right-of-left(%function_statement%,/)%,%(%function_statement%)%)%)%)%)%)%)%,%
%_statement,%(%else-then(%_statement%,%(%else-then(%right-of-left(%function_statement%,/)%,%(%else(%left-of-right(%function_statement%,/)%,%(%function_statement%)%)%)%)%)%)%)%,%
%prefixsuffix_name,%(%module%%else-then(%prefixsuffix_name%,%(%function_prefixsuffix_name%)%)%)%,%
%prefix,%(%else-then(%left(%prefixsuffix_name%,/)%,%(%else(%right(%prefixsuffix_name%,/)%,%(%prefixsuffix_name%)%)%)%)%)%,%
%suffix,%(%else-then(%right(%prefixsuffix_name%,/)%,%()%)%)%,%
%setget_name,%(%else-then(%setget_name%,%(%else(%equal(no,%function_pair%)%,%(%function_pair%)%)%)%)%)%,%
%setget,%(%else(%equal(no,%setget%)%,%setget%)%)%,%
%setget_p,%(%equal(yes,%function_prototype%)%)%,%
%setget_a,%(%if(%equal(abstract,%setget%)%, = 0)%)%,%
%setget_t,%(%if-then(%else(%equal(no,%setget%)%,%else(%equal(yes,%setget%)%,%if(%setget_a%,%(virtual)%,%(%setget%)%)%)%)%, )%)%,%
%set,%(%else-then(%left(%setget_name%,/)%,%(%else(%right(%setget_name%,/)%,%(%else-then(%setget_name%,%(Set)%)%)%)%)%)%)%,%
%get,%(%else-then(%right(%setget_name%,/)%,%(%else(%left(%setget_name%,/)%,%(Get)%)%)%)%)%,%
%get_return_t,%(%if(%_return%,%_return_t%,%parameter_t%)%)%,%
%get_return_n,%(%if(%_return%,%_return_n%,%parameter_n%)%)%,%
%get_return_v,%(%if(%_return%,%_return_v%,%parameter_v%)%)%,%
%doundo,%(%else(%equal(no,%doundo%)%,%(%doundo%)%)%)%,%
%doundo_p,%(%equal(yes,%function_prototype%)%)%,%
%doundo_a,%(%if(%equal(abstract,%doundo%)%,%( = 0)%)%)%,%
%doundo_c,%(%if(%equal(yes,%function_const%)%,%( const)%)%)%,%
%doundo_t,%(%if-then(%else(%equal(no,%doundo%)%,%else(%equal(yes,%doundo%)%,%if(%doundo_a%,%(virtual)%,%(%doundo%)%)%)%)%, )%)%,%
%do,%(%else-then(%left-of-right(%setget_name%,/)%,%else-then(%setget_name%,Do)%)%)%,%
%undo,%(%else-then(%right-of-left(%setget_name%,/)%,%else-then(%setget_name%,Undo)%)%)%,%
%create,%(%else-then(%left(%setget_name%,/)%,%else-then(%setget_name%,Create)%)%)%,%
%destroy,%(%else-then(%right(%setget_name%,/)%,%else-then(%setget_name%,Destroy)%)%)%,%
%open,%(%else-then(%left(%setget_name%,/)%,%else-then(%setget_name%,Open)%)%)%,%
%close,%(%else-then(%right(%setget_name%,/)%,%else-then(%setget_name%,Close)%)%)%,%
%read,%(%else-then(%left(%setget_name%,/)%,%else-then(%setget_name%,Read)%)%)%,%
%write,%(%else-then(%right(%setget_name%,/)%,%else-then(%setget_name%,Write)%)%)%,%
%functions,%(%else(%equal(no,%functions%)%,%else-then(%functions%,%(%if(%function%,yes)%)%)%)%)%,%
%functions_p,%(%equal(yes,%function_prototype%)%)%,%
%functions_a,%(%if(%equal(abstract,%functions%)%, = 0)%)%,%
%functions_c,%(%if(%equal(yes,%function_const%)%, const)%)%,%
%functions_t,%(%if-then(%else(%equal(no,%functions%)%,%else(%equal(yes,%functions%)%,%if(%functions_a%,virtual,%functions%)%)%)%, )%)%,%
%function_name,%(%else-then(%function_name%,%(%function%)%)%)%,%
%operators,%(%else(%equal(no,%operators%)%,%(%operators%)%)%)%,%
%operators_p,%(%equal(yes,%function_prototype%)%)%,%
%operators_a,%(%if(%equal(abstract,%operators%)%,%( = 0)%)%)%,%
%operators_c,%(%if(%equal(yes,%function_const%)%,%( const)%)%)%,%
%operators_t,%(%if-then(%else(%equal(no,%(%operators%)%)%%equal(yes,%(%operators%)%)%,%(%if(%operators%_a,%(virtual)%,%(%operators%)%)%)%)%,%( )%)%)%,%
%createdestroy,%(%else(%equal(no,%createdestroy%)%,%createdestroy%)%)%,%
%create,%(%else-then(%left(%setget_name%,/)%,%else-then(%setget_name%,Create)%)%)%,%
%destroy,%(%else-then(%right(%setget_name%,/)%,%else-then(%setget_name%,Destroy)%)%)%,%
%createdestroy_a,%(%equal(abstract,%createdestroy%)%)%,%
%createdestroy_t,%(%if-then(%else(%equal(no,%createdestroy%)%,%else(%equal(yes,%createdestroy%)%,%if(%createdestroy_a%,virtual,%createdestroy%)%)%)%, )%)%,%
%main,%(%else(%equal(no,%main%)%,%(%main%)%)%)%,%
%system_include,%(%else-then(%system_include%,%(%include_system%)%)%)%,%
%include_system,%(%else(%system_include%,%(%include_system%)%)%)%,%
%begin_separator,%(%else-then(%begin_separator%,%(%(%include(%filepath%/%fileprefix%cxx-begin-separator.t)%)%)%)%)%,%
%end_separator,%(%else-then(%end_separator%,%(%(%include(%filepath%/%fileprefix%cxx-end-separator.t)%)%)%)%)%,%
%left_separator,%(%else-then(%left_separator%,%(%(%include(%filepath%/%fileprefix%cxx-left-separator.t)%)%)%)%)%,%
%left_comment,%(%else-then(%left_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%right_comment,%(%else-then(%right_comment%,%(%else(%cpp_comments%,%(*/)%)%)%)%)%,%
%first_comment,%(%else-then(%first_comment%,%(%if(%cpp_comments%,%(//)%,%(/*)%)%)%)%)%,%
%middle_comment,%(%else-then(%middle_comment%,%(%if(%cpp_comments%,%(//)%,%( *)%)%)%)%)%,%
%last_comment,%(%else-then(%last_comment%,%(%if(%cpp_comments%,%(//)%,%( */)%)%)%)%)%,%
%typedef_cis,%(%else-then(%typedef_cis%,%(%C%Extends)%)%)%,%
%typedef_cas,%(%else-then(%typedef_cas%,%(%C%Derives)%)%)%,%
%typedef_cimplements,%(%else-then(%typedef_cimplements%,%(%C%Implements)%)%)%,%
%_extends,%(%else-then(%_extends%,%(%tolower(%extends%)%)%)%)%,%
%include_file,%(%filepath%/%fileprefix%%fileclass%%filetype%.t)%,%
%%(%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%cxx-html-begin.t)%)%)%%
%%if(%parameter_values%,%(%
%%do(%
%%apply(%
%apply_to,%%include%(()%%include_file%%())%%%,%
%%(%
%%include(%filepath%/%fileprefix%cxx-class-parameter-values.t)%%
%)%)%%
%)%%
%)%,%(%
%%include(%include_file%)%%
%)%)%%
%%if(%html_content_type%,%(%include(%filepath%/%fileprefix%cxx-html-end.t)%)%)%%
%)%)%