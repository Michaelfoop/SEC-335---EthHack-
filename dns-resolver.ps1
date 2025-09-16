param($network, $server)

for ($i=1;$i -lt 255;$i++){
    $ip = ($network + "." + $i)
    $hn = (Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore)
    if ($null -ne $hn) {
        Write-Host $ip $hn.NameHost
    }
}