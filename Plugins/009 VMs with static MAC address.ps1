$Title = "VMs with static MAC address"
$Header ="VMs with static MAC address"
$Comments = "VMs with static MAC address"
$Display = "Table"
$Author = "Jan Egil Ring"
$PluginVersion = 1.0
$PluginCategory = "SC VMM"

switch -wildcard ($VMMServer.ProductVersion) 
    { 
        "2.*" {$vms | Get-VirtualNetworkAdapter | Where-Object {$_.PhysicalAddressType -ne 'Dynamic'} | Select-Object @{Name="VM";Expression={$_.Name}},@{Name="VMHost";Expression={(Get-VM $_.Name -ea silentlycontinue).VMHost.Name}},VirtualNetworkAdapterType,PhysicalAddress,VirtualNetwork | Sort-Object VM} 
        "3.*" {$vms | Get-SCVirtualNetworkAdapter | Where-Object {$_.PhysicalAddressType -ne 'Dynamic'} | Select-Object @{Name="VM";Expression={$_.Name}},@{Name="VMHost";Expression={(Get-SCVirtualMachine $_.Name -ea silentlycontinue).VMHost.Name}},VirtualNetworkAdapterType,PhysicalAddress,VirtualNetwork | Sort-Object VM} 
        default {break}
    }
