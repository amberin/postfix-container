#! /bin/sh
set -x
postconf -e maillog_file=/dev/stdout
postconf -e myhostname="$POSTFIX_MYHOSTNAME"
postconf -e relay_domains="$POSTFIX_RELAY_DOMAINS"
postconf -e smtp_tls_security_level=verify
postconf -e smtp_tls_CAfile=/etc/ssl/certs/ca-certificates.crt
newaliases
exec postfix start-fg -vv
