Notification client for shell
=============================

Sends notifications using a [Wolnościowiec Notification](https://github.com/Wolnosciowiec/wolnosciowiec-notification)


### Examples with plain payload

Example (sending a simple mail):
```
echo '{"content": "Lenin is not comparable to any revolutionary figure in history. Revolutionaries have had ideals. Lenin has none. He is a madman, an immolator, wishful of burning, and slaughter, and sacrificing.", "title": "A Kropotkin quote", "group_name": "email"}' | ./notification-send --type MailMessage
```

Example (validation failure):
```bash
$ echo '{"content": "There are periods in the life of human society when revolution becomes an imperative necessity, when it proclaims itself as inevitable": "A Kropotkin quote", "group_name": "email"}' | ./notification-send --type Exception  
{"success":false,"reason":"validation_failed","message":"service_name_required, request_information_required, exception_message_required"}
```
