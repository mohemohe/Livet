@echo off
cd %~d0%~p0

@echo on

echo copy snippets
xcopy /I /Y .\Files\Snippets\*_CSharp.* "%UserProfile%\Documents\Visual Studio 2013\Code Snippets\Visual C#\My Code Snippets\Livet"
xcopy /I /Y .\Files\Snippets\*_VB.* "%UserProfile%\Documents\Visual Studio 2013\Code Snippets\Visual Basic\My Code Snippets\Livet"

echo project templates
call :copy_project_template_csharp Livet_WPF4.0_CSharp
call :copy_project_template_csharp Livet_WPF4.5_CSharp

call :copy_project_template_vb Livet_WPF4.0_VB
call :copy_project_template_vb Livet_WPF4.5_VB

echo item templates
call :copy_item_template_csharp LivetInteractionMessageAction_CSharp
call :copy_item_template_csharp LivetMessage_CSharp
call :copy_item_template_csharp LivetModel_CSharp
call :copy_item_template_csharp LivetViewModel_CSharp
call :copy_item_template_csharp LivetWindow_CSharp

call :copy_item_template_vb LivetInteractionMessageAction_VB
call :copy_item_template_vb LivetMessage_VB
call :copy_item_template_vb LivetModel_VB
call :copy_item_template_vb LivetViewModel_VB
call :copy_item_template_vb LivetWindow_VB

echo simple install completed!!!
pause

:copy_project_template_csharp
xcopy /I /E /Y .\Files\Templates\%1 "%UserProfile%\Documents\Visual Studio 2013\Templates\ProjectTemplates\Visual C#\%1"
exit /b

:copy_project_template_vb
xcopy /I /E /Y .\Files\Templates\%1 "%UserProfile%\Documents\Visual Studio 2013\Templates\ProjectTemplates\Visual Basic\%1"
exit /b

:copy_item_template_csharp
xcopy /I /E /Y .\Files\Templates\%1 "%UserProfile%\Documents\Visual Studio 2013\Templates\ItemTemplates\Visual C#\%1"
exit /b

:copy_item_template_vb
xcopy /I /E /Y .\Files\Templates\%1 "%UserProfile%\Documents\Visual Studio 2013\Templates\ItemTemplates\Visual Basic\%1"
exit /b
