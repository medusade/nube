%########################################################################
%# Copyright (c) 1988-2019 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: vstudio.t
%#
%# Author: $author$
%#   Date: 11/27/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_vsversion,%(%else-then(%is_vsversion%,%(%is_VSVersion%)%)%)%,%
%vsversion,%(%else-then(%if-no(%is_vsversion%,,%(%vsversion%)%)%,%(%if-no(%is_vsversion%,,%(9.00)%)%)%)%)%,%
%VSVersion,%(%else-then(%if-no(%is_vsversion%,,%(%VSVersion%)%)%,%(%vsversion%)%)%)%,%
%VSVERSION,%(%else-then(%VSVERSION%,%(%toupper(%VSVersion%)%)%)%)%,%
%vsversion,%(%else-then(%_VSVersion%,%(%tolower(%VSVersion%)%)%)%)%,%
%is_vcversion,%(%else-then(%is_vcversion%,%(%is_VCVersion%)%)%)%,%
%vcversion,%(%else-then(%if-no(%is_vcversion%,,%(%vcversion%)%)%,%(%if-no(%is_vcversion%,,%(vc9)%)%)%)%)%,%
%VCVersion,%(%else-then(%if-no(%is_vcversion%,,%(%VCVersion%)%)%,%(%vcversion%)%)%)%,%
%VCVERSION,%(%else-then(%VCVERSION%,%(%toupper(%VCVersion%)%)%)%)%,%
%vcversion,%(%else-then(%_VCVersion%,%(%tolower(%VCVersion%)%)%)%)%,%
%is_projectguid,%(%else-then(%is_projectguid%,%(%is_ProjectGUID%)%)%)%,%
%projectguid,%(%else-then(%if-no(%is_projectguid%,,%(%projectguid%)%)%,%(%if-no(%is_projectguid%,,%else-then(%windows-uuid()%,%({44FE1A9B-5A9D-4C6F-B1E4-F28481CA5AA5})%)%)%)%)%)%,%
%ProjectGUID,%(%else-then(%if-no(%is_projectguid%,,%(%ProjectGUID%)%)%,%(%projectguid%)%)%)%,%
%PROJECTGUID,%(%else-then(%PROJECTGUID%,%(%toupper(%ProjectGUID%)%)%)%)%,%
%projectguid,%(%else-then(%_ProjectGUID%,%(%tolower(%ProjectGUID%)%)%)%)%,%
%is_keyword,%(%else-then(%is_keyword%,%(%is_Keyword%)%)%)%,%
%keyword,%(%else-then(%if-no(%is_keyword%,,%(%keyword%)%)%,%(%if-no(%is_keyword%,,%(Win32Proj)%)%)%)%)%,%
%Keyword,%(%else-then(%if-no(%is_keyword%,,%(%Keyword%)%)%,%(%keyword%)%)%)%,%
%KEYWORD,%(%else-then(%KEYWORD%,%(%toupper(%Keyword%)%)%)%)%,%
%keyword,%(%else-then(%_Keyword%,%(%tolower(%Keyword%)%)%)%)%,%
%is_targetframeworkversion,%(%else-then(%is_targetframeworkversion%,%(%is_TargetFrameworkVersion%)%)%)%,%
%targetframeworkversion,%(%else-then(%if-no(%is_targetframeworkversion%,,%(%targetframeworkversion%)%)%,%(%if-no(%is_targetframeworkversion%,,%(196613)%)%)%)%)%,%
%TargetFrameworkVersion,%(%else-then(%if-no(%is_targetframeworkversion%,,%(%TargetFrameworkVersion%)%)%,%(%targetframeworkversion%)%)%)%,%
%TARGETFRAMEWORKVERSION,%(%else-then(%TARGETFRAMEWORKVERSION%,%(%toupper(%TargetFrameworkVersion%)%)%)%)%,%
%targetframeworkversion,%(%else-then(%_TargetFrameworkVersion%,%(%tolower(%TargetFrameworkVersion%)%)%)%)%,%
%%(%
%%include(%include_path%/vstudio-file.t)%%
%<VisualStudioProject
    ProjectType="Visual C++"
    Version="%VSVersion%"
    Name="%Name%"
    RootNamespace="%Name%"
    ProjectGUID="%ProjectGUID%"
    Keyword="%Keyword%"
    TargetFrameworkVersion="%TargetFrameworkVersion%">

</VisualStudioProject>
%
%)%)%