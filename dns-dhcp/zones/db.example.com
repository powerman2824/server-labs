$ORIGIN example.com.
$TTL	1w
example.com.	IN	SOA	dns.example.com. root.dns.example.com. (
			3		; Serial
			1w		; Refresh
			1d		; Retry
			28d		; Expire
			1w) 	; Negative Cache TTL
			 
; name servers - NS records
		IN	NS	dns.example.com.

; name servers - A records
dns.example.com.		IN	A	10.0.200.2

; 10.0.200.0/24 - A records
router1.example.com.		IN	A	10.0.200.1

; 10.0.10.0/24 - A records
host10.1.example.com.           IN      A       10.0.10.2

; 10.0.20.0/24 - A records
host20.1.example.com.           IN      A       10.0.20.2

; 10.0.30.0/24 - A records
host30.1.example.com.           IN      A       10.0.30.2 

; 10.0.40.0/24 - A records
host40.1.example.com.           IN      A       10.0.40.2
