del ".\NUnit.ConsoleRunner.3.8.0\tools\FormularioHTMLReport\*.html"
del ".\NUnit.ConsoleRunner.3.8.0\tools\FormularioResultados\*.xml"

cd .\NUnit.ConsoleRunner.3.8.0\tools
nunit3-console.exe "C:\ProjetoNUnit\jobmidia\PicklesSpecflow.dll" --result="jobmidiaresult.xml;format=nunit3" --work=".\FormularioResultados" --where "cat=console"

cd C:\ProjetoNUnit
ReportUnit.exe "C:\ProjetoNUnit\NUnit.ConsoleRunner.3.8.0\tools\FormularioResultados" "C:\ProjetoNUnit\NUnit.ConsoleRunner.3.8.0\tools\FormularioHTMLReport"

cd C:\ProjetoNUnit\Pickles.CommandLine.2.18.2\tools\
pickles.exe --feature-directory=C:\ProjetoNUnit\Features --language=pt -output-directory C:\ProjetoNUnit\Pickles --documentation-format=Dhtml --link-results-file=C:\ProjetoNUnit\NUnit.ConsoleRunner.3.8.0\tools\FormularioResultados\jobmidiaresult.xml --test-results-format=nunit3

