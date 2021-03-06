$Title = "System Center Virtual Machine Manager - Basic Host Information"
$Header ="System Center Virtual Machine Manager - Basic Host Information"
$Comments = "System Center Virtual Machine Manager - Basic Host Information"
$Display = "Table"
$Author = "Jan Egil Ring"
$PluginVersion = 1.0
$PluginCategory = "Hyper-V"

$VMHosts  | Select-Object VirtualizationPlatform, VMHostGroup, HostCluster, Name, OverallState, CommunicationState, CPUManufacturer, CPUModel, ProcessorSpeed, LogicalCPUCount, PhysicalCPUCount, @{Name="TotalMemory"; Expression={"{0:N2}" -f ($_.TotalMemory/1gb)}},  @{Name="AvailableMemory"; Expression={"{0:N2}" -f ($_.AvailableMemory/1kb)}}, Operatingsystem