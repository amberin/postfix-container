# Postfix container

A minimal postfix deployment which allows you to send mail to specific domains.
Listens on the loopback interface only, so not intended for receiving or
forwarding mail.

The primary use case for this container is for sending simple notifications to
a select few people.

## Environment Variables

### POSTFIX_MYHOSTNAME

Your desired sender DNS identity.

### POSTFIX_RELAY_DOMAINS

The intended valid recipient domains. This offers some protection in the case
some process should get owned and try to send spam.
