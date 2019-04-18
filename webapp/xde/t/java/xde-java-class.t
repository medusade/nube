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
%#   File: xde-java-class.t
%#
%# Author: $author$
%#   Date: 7/11/2008
%#
%#############################################################################
%with(%
%Class:,%(%else(%javadoc_comments%,%(Class:)%,%( Class)%)%)%,%
%Package:,%(%else(%javadoc_comments%,%(Package:)%,%(    @pkg)%)%)%,%
%Author:,%(%else(%javadoc_comments%,%(Author:)%,%(@author)%)%)%,%
%Date:,%(%else(%javadoc_comments%,%(Date:)%,%(@date)%)%)%,%
%Constructor:,%(%else(%javadoc_comments%,%(Constructor:)%,%( Constructor)%)%)%,%
%Destructor:,%(%else(%javadoc_comments%,%(Destructor:)%,%( Destructor)%)%)%,%
%Function:,%(%else(%javadoc_comments%,%(Function:)%,%( Function)%)%)%,%
%class_access,%(%else-then(%class_access%,%(public)%)%)%,%
%access,%(%else-then(%access%,%(%class_access%)%)%)%,%
%access,%(%else(%equal(no,%access%)%,%(%if(%access%,%(%do(%%_%access%_%%)% )%)%)%)%)%,%
%interface,%(%if(%equal(yes,%interface%)%,%(interface)%,%(class)%)%)%,%
%constructor,%(%else-then(%constructor%,%(public)%)%)%,%
%destructor,%(%else-then(%destructor%,%(public)%)%)%,%
%function,%(%else-then(%function%,%(public)%)%)%,%
%function_return_variable,%(%else-then(%function_return_variable%,%(%right(%left(%function_return%,%(=)%)%,%( )%)%)%)%)%,%
%function_return_value,%(%else-then(%function_return_value%,%(%right(%function_return%,%(=)%)%)%)%)%,%
%function_return,%(%else-then(%left(%function_return%,%( )%)%,%(%else-then(%left(%function_return%,%(=)%)%,%(%function_return%)%)%)%)%)%,%
%main,%(%else-then(%main%,%(main)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%java-class-separator.t)%%
%%access%%do(%%_%interface%_%%)% %class%%
%%if(%extends%,%(
 %_extends_% %extends%)%)%%
%%if(%implements%,%(
 %_implements_% %parse(%implements%,%(;)%,,%(,)%)%)%)%%
%
{%with(indent,%(%indent%%indent_%)%,%
%%(%
%%else(%equal(no,%constructor%)%,%(
%
%%include(%filepath%/%fileprefix%java-constuctor-separator.t)%%
%%indent%%do(%%_%constructor%_%%)% %class%%if(%constructor_parameters%,%(
%indent%%(()%%
%%with(%
%function_parameters,%(%constructor_parameters%)%,%
%%(%
%%include(%filepath%/%fileprefix%java-function-parameters.t)%%
%)%)%%
%%())%)%,%(%(()%%())%)%)%%if(%extends%,%(
%indent% super() )%)%
%indent%{
%indent%})%)%%
%%else(%equal(no,%destructor%)%,%(
%
%%include(%filepath%/%fileprefix%java-destuctor-separator.t)%%
%%indent%%do(%%_%destructor%_%%)% %_void_% %_finalize_%%(()%%())%
%indent%{
%indent%})%)%%
%%else(%equal(no,%function%)%,%(%
%%with(%
%function_return,%(%else-then(%function_return%,%(%_void_%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%java-function.t)%%
%)%)%%
%)%)%%
%%else(%equal(no,%main%)%,%(%
%%with(%
%function,%(%main%)%,%
%function_type,%(static)%,%
%function_return,%(%_void_%)%,%
%function_return_variable,%()%,%
%function_return_value,%()%,%
%function_name,%(%_main_%)%,%
%function_separator,%(|)%,%
%function_parameters,%(%(%xx_%String%_xx%)% arg[])%,%
%function_body,%(%main_body%)%,%
%%(%
%%include(%filepath%/%fileprefix%java-function.t)%%
%)%)%%
%)%)%%
%)%)%
}
%
%)%)%