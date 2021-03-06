$Title = "VM Operating System Statistics"
$Header ="VM Operating System Statistics"
$Comments = "VM Operating System Statistics"
$Display = "Table"
$Author = "Jan Egil Ring"
$PluginVersion = 1.0
$PluginCategory = "SC VMM"

$VMs | Group-Object operatingsystem | Select-Object name,count | Sort-Object count -Descending