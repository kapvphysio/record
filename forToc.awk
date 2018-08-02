BEGIN {	FS="{";print"\\documentclass[a4paper,12pt]{book}\n","\\usepackage{graphicx}\n","\\usepackage{float}\n","\\usepackage[a4paper, left=1in,right=1in,top=2cm,bottom=1.5cm]{geometry}","\\begin{document}\n";print "\\pagenumbering{gobble}";print "\\begin{table}[H]\n","\\renewcommand{\\arraystretch}{2.5}","\\centering\n","\\resizebox{\\textwidth}{!}{%\n","\\begin{tabular}{|c|l|p{3in}|l|c|}\n","\\hline";print"\\textbf{S.No}","&","\\textbf{Date}","&","\\centering","{\\textbf{Experiment}}","&","\\textbf{Signature}", "&","\\textbf{Page}","\\\\","\\hline";x=1}
	{
if ($2 ~ /chapter}/)
{print x,"&","&",(substr($3,1,length($3)-1)),"&","&",(substr($4,1,length($4)-1)),"\\\\","\\hline";x=x+1}
		}
		{
if ($0 ~ /\\newpage/)
{print "\\end{tabular}\n","}\n","\\end{table}\n";print"\\newpage\n";print "\\begin{table}[H]\n","\\renewcommand{\\arraystretch}{2.5}","\\centering\n","\\resizebox{\\textwidth}{!}{%\n","\\begin{tabular}{|c|l|p{3in}|l|c|}\n","\\hline";print"\\textbf{S.No}","&","\\textbf{Date}","&","\\centering \\textbf{Experiment}","&","\\textbf{Signature}", "&","\\textbf{Page}","\\\\","\\hline";x=1}
	}
END {print "\\end{tabular}\n","}\n","\\end{table}\n","\\end{document}\n"}

