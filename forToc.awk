BEGIN {	FS="{";print"\\documentclass[a4paper,12pt]{book}\n","\\usepackage{graphicx}\n","\\begin{document}\n";print "\\begin{table}[]\n","\\centering\n","\\resizebox{\\textwidth}{!}{%\n","\\begin{tabular}{|l|l|l|l|l|}\n","\\hline";print"S.No","&","Date","&","Experiment","&","Signature", "&","Page","\\\\","\\hline"}
	{
if ($2 ~ /chapter}/)
{print "&","&",(substr($3,1,length($3)-1)),"&","&",(substr($4,1,length($4)-1)),"\\\\","\\hline"}
		}
		{
if ($0 ~ /\\newpage/)
{print "\\end{tabular}\n","}\n","\\end{table}\n";print"\\newpage\n";print "\\begin{table}[]\n","\\centering\n","\\resizebox{\\textwidth}{!}{%\n","\\begin{tabular}{|l|l|l|l|l|}\n","\\hline";print"S.No","&","Date","&","Experiment","&","Signature", "&","Page","\\\\","\\hline"}
	}
END {print "\\end{tabular}\n","}\n","\\end{table}\n","\\end{document}\n"}

