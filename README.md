Notification client for shell
=============================

Sends notifications using a [Wolnościowiec Notification](https://github.com/Wolnosciowiec/wolnosciowiec-notification)


### Examples with plain payload

Example (sending a simple mail):
```bash
echo '{"content": "Lenin is not comparable to any revolutionary figure in history. Revolutionaries have had ideals. Lenin has none. He is a madman, an immolator, wishful of burning, and slaughter, and sacrificing.", "title": "A Kropotkin quote", "group_name": "email"}' | ./notification-send --type MailMessage
```

Example (validation failure):
```bash
$ echo '{"content": "There are periods in the life of human society when revolution becomes an imperative necessity, when it proclaims itself as inevitable": "A Kropotkin quote", "group_name": "email"}' | ./notification-send --type Exception  
{"success":false,"reason":"validation_failed","message":"service_name_required, request_information_required, exception_message_required"}

```

### Example: A plain message

```bash
echo "**Food Not Bombs** is a loose-knit group of independent collectives, serving free vegan and vegetarian food to others. Food Not Bombs' ideology is that myriad corporate and government priorities are skewed to allow hunger to persist in the midst of abundance. To demonstrate this (and to reduce costs), a large amount of the food served by the group is surplus food from grocery stores, bakeries and markets that would otherwise go to waste. This group exhibits a form of franchise activism." | ./bin/notification-message-send -g slack -t "Food Not Bombs" -i test_id
```
