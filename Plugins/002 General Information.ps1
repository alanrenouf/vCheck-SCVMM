$Title = "General information"
$Header ="General information"
$Comments = "General information about the virtualization infrastructure"
$Display = "List"
$Author = "Jan Egil Ring"
$PluginVersion = 1.0
$PluginCategory = "SC VMM"

New-Object -TypeName PSObject -Property @{
	"Number of Hosts:" = (@($VMHosts).Count)
	"Number of VMs:" = (@($VMs).Count)
	"Number of Clusters:" = (@($VMHostClusters).Count)
	"Active VMs:" = (@($VMs | Where-Object { $_.Status -eq "Running" }).Count) 
	"In-active VMs:" = (@($VMs | Where-Object { $_.Status -eq "PowerOff" }).Count) 
} | Select-Object "Number of Hosts:","Number of VMs:","Number of Clusters:","Active VMs:","In-active VMs:"